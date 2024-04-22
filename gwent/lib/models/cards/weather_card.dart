import 'package:gwent/models/boards/board_section.dart';
import 'package:gwent/models/boards/board.dart';
import 'package:gwent/models/cards/card.dart';

class WeatherCard implements ModelCard{
  final String name;
  final WeatherEffect effect;

  WeatherCard(this.name, this.effect);


  /// returns the name of the card
  @override
  String getName() {
    return name;
  }


  /// returns the card type
  @override
  String getCardType() {
    return 'Weather';
  }

  /// returns the information of the card
  @override
  String printCard() {
    return 'Weather Card: $name Effect: ${effect.getName()}';
  }


  /// assigns the card to a zone
  @override
  void assignZone(BoardSection section, List<WeatherCard> weather) {
    weather[0] = this;
  }


  /// applies the card effect to the board
  @override
  void apply(Board board, BoardSection boardSection) {
    effect.apply(board, boardSection);
  }

  /// Hashcode for the card
  @override
  int get hashCode => name.hashCode;

  /// Equality for the card
  @override
  bool operator ==(Object other) {
    if (other is WeatherCard) {
      return name == other.name;
    }
    return false;
  }
}