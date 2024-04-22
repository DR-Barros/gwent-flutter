import 'package:gwent/models/cards/abstract_unit_card.dart';
import 'package:gwent/models/cards/states/abstract_card_state.dart';
import 'package:gwent/models/cards/states/fog_state.dart';
import 'package:gwent/models/cards/states/frost_state.dart';
import 'package:gwent/models/cards/states/rain_state.dart';

class ClearState implements AbstractCardState {
  AbstractUnitCard? _card;

  @override
  void setCard(AbstractUnitCard card) {
    _card = card;
  }

  @override
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
    return true;
  }

  @override
  bool isRain() {
    return false;
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