import 'package:gwent/controller/abstract_controller.dart';

abstract class AbstractStateController {
  void setController(AbstractController controller);
  void changeState(State state); 
  void handle();
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
