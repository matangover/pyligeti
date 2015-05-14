import abjad
import random
import time
import math
import os

SCORE_NAME = "Überfaotzel"

def main():
    init_random()
    score = open_score()
    mutate_score(score)
    abjad.show(score)

def init_random():
    """
    Manually seed Python's random number generator with the current time.
    This is done in order to be able to reconstruct the random behavior of this
    script at a later time, using the saved random seed.
    The seed is printed to the console. (TODO - save it in the .ly output.)
    """
    seed = time.time()
    random.seed(seed)
    print(seed)
    return seed

def open_score():
    """
    Parse a Lilypond input file file using abjad's parser.
    Note that this parser supports a very incomplete subset of Lilypond, so
    manual tweaking of the .ly file must be done in advance.
    """
    score_path = os.path.join(os.path.dirname(__file__), "scores", SCORE_NAME, "input", "score.ly")
    with open(score_path) as input_file:
        # The default language for the .ly files I was using is Dutch.
        parser = abjad.lilypondparsertools.LilyPondParser(default_language="nederlands")
        return parser(input_file.read())

def mutate_score(score):
    """
    Muahahaha. Revenge of the Mutant Camels.
    Modifies the score in-place. Currently only object durations are mutated.
    """
    for leaf in score.select_leaves(allow_discontiguous_leaves=True):
        adjust_duration(leaf)
        # adjust_pitch... etc

def adjust_duration(leaf):
    """
    Adjust the duration of every object in the score by a random amount - mostly
    making everything longer but also shortening some objects.
    Modifies the leaf object in-place.
    """
    duration_multiplier = 1
    # Adjust note duration 0.8 of the time (statistically).
    if (random.random() < 0.8):
        duration_multiplier = random.random() * 5
        # half of the time we want to shorten the notes instead of making them longer
        shorten = bool(random.randint(0, 1))
        if shorten:
            duration_multiplier = 1 / duration_multiplier
    # Whatever we do, multiply duration by 8, to make everything very 'prolonged'
    duration_multiplier = round(8 * duration_multiplier)
    # For some undocumented reason, abjad only supports durations up to 16 / 1,
    # so don't produce durations longer than that.
    if leaf.written_duration * duration_multiplier >= 16:
        duration_multiplier = math.floor(random.random() * (16 / leaf.written_duration))
    # Duration of 0 is also not desirable.
    if duration_multiplier == 0:
        duration_multiplier = 0.5

    abjad.mutate(leaf).scale(duration_multiplier)

if __name__ == "__main__":
    main()
