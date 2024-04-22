import 'package:gwent/models/cards/effects/weather_effect.dart';
import 'package:gwent/models/board/board.dart';

class RainEffect implements WeatherEffect{
  @override
  String getName() {
    return 'Lluvia torrencial';
  }

  @override
  void apply(Board board) {
    board.applyRainEffect();
  }
}