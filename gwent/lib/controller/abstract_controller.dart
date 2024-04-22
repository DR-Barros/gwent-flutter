import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/models/observer/subject.dart';

abstract class AbstractController {
  void setState(AbstractStateController aState);
  bool getIsFinish();
  void resetGame();
  void loose(Subject o);
  void handleState();
  void start();
  void roundInit();
  void player1Turn();
  void player2Turn();
  void playCardP1();
  void playCardP2();
  void playCardsP1();
  void playCardsP2();
  void finishRound();
  void nextRound();
  void finishGame();
  bool isStart();
  bool isRoundInit();
  bool isPlayer1Turn();
  bool isPlayer2Turn();
  bool isPlayCardP1();
  bool isPlayCardP2();
  bool isPlayCardsP1();
  bool isPlayCardsP2();
  bool isFinishRound();
  bool isNextRound();
  bool isFinishGame();
}