import 'package:flutter/material.dart';
import 'package:gwent/controller/abstract_controller.dart';

abstract class AbstractStateController {
  AbstractController? controller;
  void setController(AbstractController controller){
    this.controller = controller;
  }
  void changeState(AbstractStateController state){
    controller!.setState(state);
  }
  void handle();
  Widget getWidget();
  void _error(){
    throw Exception("Wrong state");
  }
  void start() => _error();
  void roundInit() => _error();
  void player1Turn() => _error();
  void player2Turn() => _error();
  void playCardP1() => _error();
  void playCardP2() => _error();
  void playCardsP1() => _error();
  void playCardsP2() => _error();
  void finishRound() => _error();
  void nextRound() => _error();
  void finishGame() => _error();
  bool isStart() => false;
  bool isRoundInit() => false;
  bool isPlayer1Turn() => false;
  bool isPlayer2Turn() => false;
  bool isPlayCardP1() => false;
  bool isPlayCardP2() => false;
  bool isPlayCardsP1() => false;
  bool isPlayCardsP2() => false;
  bool isFinishRound() => false;
  bool isNextRound() => false;
  bool isFinishGame() => false;
}
