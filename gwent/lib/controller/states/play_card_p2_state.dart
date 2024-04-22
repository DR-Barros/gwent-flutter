import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/player1_turn_state.dart';
import 'package:gwent/models/board/board.dart';
import 'package:gwent/models/players/abstract_player.dart';

class PlayCardP2State extends AbstractStateController{
  @override
  void handle() {
    int sec1 = controller!.getBoard().getStrengthSection1();
    AbstractPlayer player2 = controller!.getPlayer2();
    int sec2 = controller!.getBoard().getStrengthSection2() + player2.getHandStrength();
    Board board = controller!.getBoard();
    

    if((sec2 >= sec1 && player2.getNumberOfUnitCards() > 0) || (sec2 <= sec1 && player2.getNumberOfWeatherCards() > 0)){
      board.playCardPlayer2(player2, player2.getUnitCardIndex());
    } else {
      board.playCardPlayer1(controller!.getPlayer1(), controller!.getPlayer1().getWeatherCardIndex());
    }
  }

  @override
  void player1Turn() {
    changeState(Player1TurnState());
  }

  @override
  bool isPlayCardP2() => true;
}