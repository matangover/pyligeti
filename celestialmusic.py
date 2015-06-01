import ephem
import abjad
import math

START_DATE = "1990/1/18"
END_DATE = "1990/2/18"
BARS_PER_DAY = 4
MAX_TUPLET = 7

def main():
    objects = (ephem.Mercury(), ephem.Venus(), ephem.Mars(), ephem.Jupiter(),
        ephem.Saturn(), ephem.Uranus(), ephem.Neptune())

    observer = ephem.Observer()
    observer.lat = '57:10'
    observer.lon = '-135:15'

    object_events = []
    for o in objects:
        events = []
        observer.date = START_DATE
        while observer.date < ephem.Date(END_DATE):
            next_rising = observer.next_rising(o)
            next_setting = observer.next_setting(o)
            events.append((next_rising, next_setting))
            observer.date = next_setting
        object_events.append(events)


    staves = []
    for object_events in object_events:
        staff = abjad.Staff()
        staves.append(staff)
        current_time = ephem.Date(START_DATE)
        for event_start, event_stop in object_events:
            # add rest to fill time until event start
            rest_duration = get_duration_from_interval(event_start - current_time)
            staff.extend(make_rests(rest_duration))
            note_duration = get_duration_from_interval(event_stop - event_start)
            staff.extend(make_notes(note_duration))
            current_time = event_stop
    abjad.show(abjad.Score(staves))

def get_duration_from_interval(days):
    bars = days *  BARS_PER_DAY
    full_bars = math.floor(bars)
    fraction = bars - full_bars
    n, d = round_to_ratio(fraction)
    return abjad.Duration(d * full_bars + n, d)

def round_to_ratio(fraction , max_denominator=MAX_TUPLET):
    if fraction == 0:
        return 0, 1
    def get_all_ratios():
        for denominator in range(1, max_denominator + 1):
            for numerator in range(1, denominator + 1):
                difference = abs(float(numerator) / denominator - fraction)
                yield difference, numerator, denominator
    diff, n, d = min(get_all_ratios(), key=lambda f: f[0])
    return n, d

def make_rests(duration):
    full_bars = int(math.floor(duration))
    result = [abjad.Rest(1)] * full_bars

    partial_bar = duration - full_bars
    if partial_bar != 0:
        notes = list(abjad.scoretools.make_notes(0, partial_bar))
        if isinstance(notes[0], abjad.Tuplet):
            change_notes_to_rests(notes[0])
        else:
            change_notes_to_rests(notes)
        result += notes

    return result

def make_notes(duration, pitch=0):
    full_bars = int(math.floor(duration))
    result = [abjad.Note(pitch, 1)] * full_bars
    partial_bar = duration - full_bars
    if partial_bar != 0:
        notes = list(abjad.scoretools.make_notes(pitch, partial_bar))
        result += notes

    abjad.attach(abjad.Tie(), result)
    return result

def change_notes_to_rests(container):
    for i, note in enumerate(container):
        container[i] = abjad.Rest(note.written_duration)

# first instrument per planet - dynamic according to distance
# then instruments from different locations on same planets
# the instrument on "polar"
# instrument by moon phase - pitch changes
# instrument of sun

if __name__ == "__main__":
    main()
