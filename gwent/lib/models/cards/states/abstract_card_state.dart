import 'package:gwent/models/cards/abstract_unit_card.dart';
abstract class AbstractCardState {
  void setCard(AbstractUnitCard card);
  void clearWeatherEffect();
  void applyFrostEffect();
  void applyFogEffect();
  void applyRainEffect();
  bool isClearWeather();
  bool isRain();
  bool isFog();
  bool isFrost();
}