import 'dart:math';
import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/player1_turn_state.dart';
import 'package:gwent/controller/states/player2_turn_state.dart';

class RoundInitState extends AbstractStateController{
  @override
  void handle() {
    double n = Random().nextDouble();
    if (n < 0.5){
      player1Turn();
    } else {
      player2Turn();
    }
  }

  @override
  void player1Turn() {
    changeState(Player1TurnState());
  }

  @override
  void player2Turn() {
    changeState(Player2TurnState());
  }

  @override
  bool isRoundInit() => true;
}