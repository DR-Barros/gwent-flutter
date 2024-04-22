import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/finish_game_state.dart';
import 'package:gwent/controller/states/next_round_state.dart';

class FinishRoundState extends AbstractStateController{
  @override
  void handle() {
    ...
  }

  @override
  void nextRound() => changeState(NextRoundState());

  @override
  void finishGame() => changeState(FinishGameState());

  @override
  bool isFinishRound() => true;
}