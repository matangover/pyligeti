import abjad
import random
import time
import math
seed = time.time()
random.seed(seed)
print(seed)

score_path = "/Users/matan/Documents/code/composition/magicflute-00-overture-lys/adagioI_score_flat_orig.ly"
with open(score_path) as input_file:
    parser = abjad.lilypondparsertools.LilyPondParser(default_language="nederlands")
    overture = parser(input_file.read())

#output_staves = []
for leaf in overture.select_leaves(allow_discontiguous_leaves=True):
    #output_staff = abjad.Staff()
    #for measure in staff.measures:
        #output_measure = abjad.new_measure()
        #for note_or_rest in output_measure:

    # adjust duration 0.8 of the time
    duration_multiplier = 1
    if (random.random() < 0.8):
        duration_multiplier = random.random() * 5
        shorten = bool(random.randint(0, 1))
        if shorten:
            duration_multiplier = 1 / duration_multiplier
    duration_multiplier = round(8 * duration_multiplier)
    if leaf.written_duration * duration_multiplier >= 16:
        duration_multiplier = math.floor(random.random() * (16 / leaf.written_duration))
    if duration_multiplier == 0:
        duration_multiplier = 0.5
    #new_duration = abjad.Duration(leaf.written_duration.numerator * duration_multiplier, leaf.written_duration.denominator)
    #leaf.written_duration = new_duration
    abjad.mutate(leaf).scale(duration_multiplier)
            # adjust pitch 0.3 of the time
            #pitch_adjustment_semitones = 0
            #if (random.random() < 0.3):
            #    pitch_adjustment_semitones = random.randint()


    #output_staves.append(output_staff)

abjad.show(overture)
