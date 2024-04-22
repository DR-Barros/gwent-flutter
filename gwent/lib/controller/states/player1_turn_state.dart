import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/play_card_p1_state.dart';
import 'package:gwent/controller/states/play_cards_p2_state.dart';

class Player1TurnState extends AbstractStateController{
  @override
  void handle() {
    ...
  }

  @override
  void playCardP1() {
    changeState(PlayCardP1State());
  }

  @override
  void playCardsP2() {
    changeState(PlayCardsP2State());
  }

  @override
  bool isPlayer1Turn() => true;
}