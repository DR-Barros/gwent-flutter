import 'package:gwent/models/cards/abstract_unit_card.dart';
import 'package:gwent/models/cards/card.dart';
import 'package:gwent/models/cards/weather_card.dart';

class CardsHand {
  final List<ModelCard> _cards = [];

  /// returns the number of cards in the hand
  int handSize() {
    return _cards.length;
  }

  /// adds a card to the hand
  /// throws an exception if the hand is full
  void addCard(ModelCard card) {
    if (_cards.length < 10) {
      _cards.add(card);
    } else {
      throw Exception('Hand is full');
    }
  }

  /// plays a card from the hand 
  /// returns the card that was played
  /// throws an exception if the index is out of bounds
  ModelCard playCard(int index) {
    if (index < _cards.length) {
      ModelCard card = _cards[index];
      _cards.removeAt(index);
      return card;
    } else {
      throw Exception('Index out of bounds');
    }
  }

  /// returns the list of cards in the hand
  List<ModelCard> getCards() {
    return _cards;
  }

  /// returns the total strength of the hand
  int getHandStrength() {
    int strength = 0;
    for (ModelCard card in _cards) {
      if (card is AbstractUnitCard){
        strength += card.getStrength();
      }
    }
    return strength;
  }

  /// returns the number of weather cards in the hand
  /// returns -1 if there are no weather cards
  int getNumberOfWeatherCards() {
    int count = 0;
    for (ModelCard card in _cards) {
      if (card is WeatherCard){
        count++;
      }
    }
    return count == 0 ? -1 : count;
  }

  /// returns the number of unit cards in the hand
  /// returns -1 if there are no unit cards
  int getNumberOfUnitCards() {
    int count = 0;
    for (ModelCard card in _cards) {
      if (card is AbstractUnitCard){
        count++;
      }
    }
    return count == 0 ? -1 : count;
  }
}