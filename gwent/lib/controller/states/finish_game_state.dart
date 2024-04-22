import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/start_state.dart';

class FinishGameState extends AbstractStateController{
  @override
  void handle() {
    ...
  }

  @override 
  void start() => changeState(StartState());

  @override
  bool isFinishGame() => true;
}