import 'package:gwent/models/cards/effects/weather_effect.dart';
import 'package:gwent/models/board/board.dart';

class FrostEffect implements WeatherEffect{
  @override
  String getName() {
    return 'Escarcha mordiente';
  }

  @override
  void apply(Board board) {
    board.applyFrostEffect();
  }
}