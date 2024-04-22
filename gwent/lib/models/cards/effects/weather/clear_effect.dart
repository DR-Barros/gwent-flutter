import 'package:gwent/models/cards/effects/weather_effect.dart';
import 'package:gwent/models/board/board.dart';

class ClearEffect implements WeatherEffect{
  @override
  String getName() {
    return 'Clima despejado';
  }

  @override
  void apply(Board board) {
    board.clearWeatherEffect();
  }
}