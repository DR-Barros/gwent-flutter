import 'package:gwent/models/board/board_section.dart';
import 'package:gwent/models/cards/card.dart';
abstract class AbstractUnitCard implements ModelCard{

  int getStrength();

  void doubleStrength();

  void moreStrength();

  void applyBondEffect(BoardSection boardSection);

  void applyMoralEffect(BoardSection boardSection);

  void setState(CardState state);

  void clearWeatherEffect();

  void applyRainEffect();

  void applyFogEffect();

  void applyFrostEffect();

  bool isClearWeather();

  bool isRain();

  bool isFog();

  bool isFrost();
}