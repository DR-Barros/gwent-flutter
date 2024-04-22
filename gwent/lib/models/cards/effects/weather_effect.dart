import 'package:gwent/models/board/board.dart';
abstract class WeatherEffect {
  String getName();
  void apply(Board board);
}