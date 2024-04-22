import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/player2_turn_state.dart';

class PlayCardP1State extends AbstractStateController{
  @override
  void handle() {
    ...
  }

  @override
  void player2Turn() => changeState(Player2TurnState());

  @override
  bool isPlayCardP1() => true;
}