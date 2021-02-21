from treys import Deck
from treys import Evaluator
from treys import Card
evaluator = Evaluator()
deck = Deck()
hand = deck.draw(5)
hand_score = evaluator.evaluate([], hand)
hand_class = evaluator.get_rank_class(hand_score)
print(Card.print_pretty_cards(hand))
print(evaluator.class_to_string(hand_class))
