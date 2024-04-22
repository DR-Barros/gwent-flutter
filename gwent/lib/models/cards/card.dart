import 'package:gwent/models/board/board_section.dart';
import 'package:gwent/models/board/board.dart';
import 'package:gwent/models/cards/weather_card.dart';

/// this is a card class
abstract class ModelCard {
  String getName();

  String getCardType();

  String printCard();

  void assignZone(BoardSection section, List<WeatherCard> weather);

  void apply(Board board, BoardSection boardSection);
}