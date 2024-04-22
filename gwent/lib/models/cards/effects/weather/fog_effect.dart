import 'package:gwent/models/cards/effects/weather_effect.dart';
import 'package:gwent/models/board/board.dart';

class FogEffect implements WeatherEffect{
  @override
  String getName() {
    return 'Niebla impenetrable';
  }

  @override
  void apply(Board board) {
    board.applyFogEffect();
  }
}