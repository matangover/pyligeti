import abjad
import random
import time
import math
import os

SCORE_NAME = "Überfaotzel"

def main():
    init_random()

    score_path = os.path.join(os.path.dirname(__file__), "scores", SCORE_NAME, "input", "score.ly")
    with open(score_path) as input_file:
        parser = abjad.lilypondparsertools.LilyPondParser(default_language="nederlands")
        overture = parser(input_file.read())

    for leaf in overture.select_leaves(allow_discontiguous_leaves=True):
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
        abjad.mutate(leaf).scale(duration_multiplier)

        # adjust pitch 0.3 of the time
        #pitch_adjustment_semitones = 0
        #if (random.random() < 0.3):
        #    pitch_adjustment_semitones = random.randint()

    abjad.show(overture)

def init_random():
    seed = time.time()
    random.seed(seed)
    print(seed)
    return seed

if __name__ == "__main__":
    main()
