import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/finish_round_state.dart';

class PlayCardsP2State extends AbstractStateController{
  @override
  void handle() {
    ...
  }

  @override
  void finishRound()  => changeState(FinishRoundState());

  @override
  bool isPlayCardsP2() => true;
}