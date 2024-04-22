import 'package:gwent/models/cards/card.dart';

class Deck {
  List<ModelCard> _cards;

  Deck(this._cards){
    _cards.shuffle(); // shuffle the deck
  }

  /// returns the number of cards in the deck
  int deckSize() {
    return _cards.length;
  }

  /// steals a card from the deck
  /// returns the card that was stolen
  /// throws an exception if the deck is empty
  ModelCard stealCard() {
    if (_cards.isNotEmpty) {
      ModelCard card = _cards[0];
      _cards.removeAt(0);
      return card;
    } else {
      throw Exception('Deck is empty');
    }
  }
}