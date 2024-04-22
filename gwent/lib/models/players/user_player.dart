import 'package:gwent/models/cards/card.dart';
import 'package:gwent/models/cards/structures/cards_hand.dart';
import 'package:gwent/models/cards/structures/deck.dart';
import 'package:gwent/models/observer/observer.dart';
import 'package:gwent/models/players/abstract_player.dart';

class UserPlayer implements AbstractPlayer{
  int _gems = 2;
  final String _name;
  final CardsHand _hand = CardsHand();
  final List<Observer> _observers = [];
  final Deck _deck;

  UserPlayer(this._name, this._deck);

  @override
  String getName() {
    return _name;
  }

  @override
  int getGems() {
    return _gems;
  }

  @override
  void loseGems() {
    _gems--;
    if (_gems == 0){
      notifyObservers('You lost the game');
    }
  }

  @override
  int handSize() {
    return _hand.handSize();
  }

  @override
  List<ModelCard> getHand() {
    return _hand.getCards();
  }

  @override
  int getHandStrength() {
    return _hand.getHandStrength();
  }

  @override
  int getNumberOfWeatherCards() {
    return _hand.getNumberOfWeatherCards();
  }

  @override
  int getNumberOfUnitCards() {
    return _hand.getNumberOfUnitCards();
  }

  @override
  void stealCard() {
    if(handSize() < 10){
      _hand.addCard(_deck.stealCard());
    }
  }

  @override
  ModelCard playCard(int index) {
    return _hand.playCard(index);
  }

  @override
  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void notifyObservers(dynamic response) {
    for (Observer observer in _observers){
      observer.update(response);
    }
  }


}