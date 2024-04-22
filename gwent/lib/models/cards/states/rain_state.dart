import 'package:gwent/models/cards/states/abstract_card_state.dart';
import 'package:gwent/models/cards/abstract_unit_card.dart';
import 'package:gwent/models/cards/states/clear_state.dart';
import 'package:gwent/models/cards/states/fog_state.dart';
import 'package:gwent/models/cards/states/frost_state.dart';

class RainState implements AbstractCardState{
  AbstractUnitCard? _card;

  @override
  void setCard(AbstractUnitCard card) {
    _card = card;
  }

  void _changeState(AbstractCardState state) {
    if (_card != null) {
      _card!.setState( state );
    }
  }

  @override
  void clearWeatherEffect() {
    _changeState( ClearState() );
  }

  @override
  void applyFrostEffect() {
    _changeState( FrostState() );
  }

  @override
  void applyFogEffect() {
    _changeState( FogState() );
  }

  @override
  void applyRainEffect() {
    _changeState( RainState() );
  }

  @override
  bool isClearWeather() {
    return false;
  }

  @override
  bool isRain() {
    return true;
  }

  @override
  bool isFog() {
    return false;
  }

  @override
  bool isFrost() {
    return false;
  }
}