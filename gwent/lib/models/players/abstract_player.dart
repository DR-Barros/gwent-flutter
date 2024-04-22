import 'package:gwent/models/cards/card.dart';
import 'package:gwent/models/observer/subject.dart';

abstract class AbstractPlayer implements Subject {
  String getName();

  int getGems();

  void loseGems();

  int handSize();

  List<ModelCard> getHand();

  int getHandStrength();

  int getNumberOfWeatherCards();

  int getNumberOfUnitCards();

  void stealCard();

  ModelCard playCard(int index);
}