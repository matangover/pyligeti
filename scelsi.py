import cv2
import abjad
import math

IMAGE = "rothko-yellow-band small.jpeg"
NOTE_DURATION = abjad.Duration(1, 4)

# Quote about Giacinto Scelsi's Quattro Pezzi su una nota sola (1959):
# The pieces each elaborate their single notes by means of variations in
# tessitura (unisons and octave doublings), dynamics and timbre, as well as
# introducing microtonal fluctuations and the occasional harmonic shadow;
# climaxes appear in these various domains at different times, all formally
# derived from the golden ratio.
# [[http://www.classical.net/music/comp.lst/works/scelsi/4pezzi.php]]

# RED
# RGB, HSL

# == HSV ==
# Hue: pitch (0-10: D, 10-100: E, 100-179: G#)
# Value: dynamics. pp: 200-214, p: 215-219, mp: 220-229, mf: 230-255
# Saturation: decide on soloist. Soloist dynamic is 2 levels more than others
#   (oboe: 156-205, clarinet: 206-218, bassoon: 219-255)
# == RGB ==
# For each instrument (oboe: R, bassoon: G, clarinet: B) -
#   threshold channel, when too low don't play. When above threshold,
#   play in octave according to channel value (3 possible octaves).
# R: 200-216, 217-222, 223-229, 230-255
# G: 0-39, 40-51, 52-130, 131-210
# B: 1-26, 27-37, 38-50, 51-94

def main():
    image_bgr = cv2.imread(IMAGE)
    image_hsv = cv2.cvtColor(image_bgr, cv2.COLOR_BGR2HSV)
    staves = [abjad.Staff() for _ in range(3)] # oboe, clarinet, bassoon
    abjad.attach(abjad.Clef('bass'), staves[2])
    abjad.attach(abjad.instrumenttools.Oboe(), staves[0])
    abjad.attach(abjad.instrumenttools.ClarinetInBFlat(short_instrument_name_markup='Cl.'), staves[1])
    abjad.attach(abjad.instrumenttools.Bassoon(), staves[2])

    # walk the image's pixels, in a 'square spiral' towards the center
    pixels = get_square_spiral_positions(20)

    prev_dynamics = [None] * 3
    prev_octave_shifts = [None] * 3
    prev_pitch = None
    for i, (x, y) in enumerate(pixels):
        pixel = (y, x)
        B, G, R = image_bgr[pixel]
        H, S, V = image_hsv[pixel]
        dynamic = get_dynamic(V)
        soloist = get_soloist(S)
        pitch = get_pitch(H)

        dynamics = [dynamic] * 3
        dynamics[soloist] += 2
        instrument_channels = [R, B, G]
        instrument_base_octaves = [0, -1, -2]

        for instrument in range(3):
            staff = staves[instrument]
            channel = instrument_channels[instrument]
            octave_shift = get_octave_shift(instrument, channel)
            if octave_shift == -1:
                if prev_octave_shifts[instrument] == -1 and i % 4 != 0:
                    staff[-1].written_duration += abjad.Duration(1, 4)
                    if staff[-1].written_duration == 1:
                        staff[-1] = abjad.scoretools.MultimeasureRest(1)
                    note = None
                else:
                    note = abjad.Rest(NOTE_DURATION)
            else:
                base_pitch = pitch + instrument_base_octaves[instrument] * 12
                note = abjad.Note(base_pitch + octave_shift * 12, NOTE_DURATION)
                if dynamics[instrument] != prev_dynamics[instrument]:
                    dynamic = abjad.Dynamic(DYNAMICS[dynamics[instrument]])
                    abjad.attach(dynamic, note)

                if prev_octave_shifts[instrument] == octave_shift and prev_pitch == pitch:
                    if dynamics[instrument] != prev_dynamics[instrument] or i % 4 == 0:
                        staff.append(note)
                        note = None
                        abjad.attach(abjad.Tie(), staff[-2:])
                    else:
                        staff[-1].written_duration += abjad.Duration(1, 4)
                        note = None

            prev_octave_shifts[instrument] = octave_shift
            if note is not None:
                staff.append(note)

        prev_pitch = pitch
        prev_dynamics = dynamics

    for staff in staves:
        bar_line = abjad.indicatortools.BarLine('|.')
        abjad.attach(bar_line, staff[-1])
    abjad.show(abjad.Score(staves))

def get_square_spiral_positions(width):
    # Start at top-left (0, 0)
    min_x = min_y = 0
    max_x = max_y = width
    while max_x > min_x:
        # Go right
        for x in range(min_x, max_x): yield (x, min_y)
        min_y += 1
        # Go down
        for y in range(min_y, max_y): yield (max_x - 1, y)
        max_x -= 1
        # Go left
        for x in range(max_x - 1, min_x - 1, -1): yield (x, max_y - 1)
        max_y -= 1
        # Go up
        for y in range(max_y - 1, min_y - 1, -1): yield (min_x, y)
        min_x += 1

SOLOIST_RANGES = (205, 218)
def get_soloist(saturation):
    return get_value_range(saturation, SOLOIST_RANGES)

PITCH_RANGES = (10, 100)
PITCHES = (abjad.NamedPitch("d'"), abjad.NamedPitch("e'"), abjad.NamedPitch("gs'"))
def get_pitch(hue):
    return PITCHES[get_value_range(hue, PITCH_RANGES)]

DYNAMIC_RANGES = (214, 219, 229)
DYNAMICS = ('pp', 'p', 'mp', 'mf', 'f', 'ff')
def get_dynamic(value):
    return get_value_range(value, DYNAMIC_RANGES)

INSTRUMENT_OCTAVE_RANGES = (
    (216, 222, 229), # Oboe
    (26, 37, 50), # Clarinet
    (39, 51, 130), # Bassoon
)

def get_octave_shift(instrument, channel_intensity):
    shift_ranges = INSTRUMENT_OCTAVE_RANGES[instrument]
    return get_value_range(channel_intensity, shift_ranges) - 1

def get_value_range(value, ranges):
    for i in range(len(ranges)):
        if value <= ranges[i]:
            return i
    return i + 1

if __name__ == "__main__":
    main()
