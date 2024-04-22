import 'package:gwent/models/cards/abstract_unit_card.dart';
import 'package:gwent/models/cards/states/abstract_card_state.dart';
import 'package:gwent/models/cards/weather_card.dart';
import 'package:gwent/models/board/board.dart';
import 'package:gwent/models/board/board_section.dart';
import 'package:gwent/models/cards/effects/unit_effect.dart';
import 'package:gwent/models/cards/states/clear_state.dart';

class CorpCard implements AbstractUnitCard{
  final String _name;
  int _strength;
  final UnitEffect _effect;
  AbstractCardState _state = ClearState();
  
  CorpCard(this._name, this._strength, this._effect){
    _state.setCard(this);
  }

  /// returns the name of the card
  @override
  String getName() {
    return _name;
  }

  /// returns the strength of the card
  @override
  int getStrength() {
    return _strength;
  }

  /// return the type of the card
  @override
  String getCardType() {
    return 'Corp';
  }

  /// prints the card
  @override
  String printCard() {
    return '$_name $_strength $_effect';
  }

  /// assigns the card to a zone
  @override
  void assignZone(BoardSection section, List<WeatherCard> weather) {
    section.addCorp(this);
  }

  /// applies the card effect to the board
  @override
  void apply(Board board, BoardSection boardSection) {
    _effect.apply(boardSection, this);
  }

  /// doubles the strength of the card
  @override
  void doubleStrength() {
    _strength *= 2;
  }

  /// increases the strength of the card
  @override
  void moreStrength() {
    _strength += 1;
  }

  /// applies the bond effect of the card if exists a card with the same name in the board section
  @override
  void applyBondEffect(BoardSection boardSection) {
    final List<CorpCard> corp = boardSection.getCorp();
    bool found = false;
    corp.forEach((c) {
      if (c.getName() == _name) {
        found = true;
      }
    });
    if (found) {
      doubleStrength();
      boardSection.applyBondEffect(this);
    }
  }

  /// applies the moral effect to all the cards in the corp section
  @override
  void applyMoralEffect(BoardSection boardSection) {
    boardSection.applyMoralEffectCorp();
  }

  /// sets the state of the card
  @override
  void setState(AbstractCardState state) {
    _state = state;
    _state.setCard(this);
  }

  /// clears the weather effect of the card
  @override
  void clearWeatherEffect() {
    _state.clearWeatherEffect();
  }

  /// the card isn't affected by the fog
  @override
  void applyFogEffect() {
    clearWeatherEffect();
  }

  /// the card isn't affected by the rain
  @override
  void applyRainEffect() {
    clearWeatherEffect();
  }

  /// the card is affected by the frost
  @override
  void applyFrostEffect() {
    _state.applyFrostEffect();
  }

  /// returns if the card is affected by the weather
  @override
  bool isClearWeather() {
    return _state.isClearWeather();
  }

  /// returns if the card is affected by the rain
  @override
  bool isRain() {
    return _state.isRain();
  }

  /// returns if the card is affected by the fog
  @override
  bool isFog() {
    return _state.isFog();
  }

  /// returns if the card is affected by the frost
  @override
  bool isFrost() {
    return _state.isFrost();
  }

  /// returns if the cards are equal
  @override
  bool operator ==(Object other) {
    if (other is CorpCard) {
      return _name == other.getName() && _strength == other.getStrength();
    }
    return false;
  }

  /// hashcode for the card
  @override
  int get hashCode => _name.hashCode  ^ _strength.hashCode ^ getCardType().hashCode;

}