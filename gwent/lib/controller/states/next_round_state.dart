import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/round_init_state.dart';
import 'package:gwent/models/board/board.dart';
import 'package:gwent/models/players/abstract_player.dart';

class NextRoundState extends AbstractStateController {
  @override
  void handle() {
    AbstractPlayer player1 = controller!.getPlayer1();
    AbstractPlayer player2 = controller!.getPlayer2();
    Board board = controller!.getBoard();
    board.clean();
    for (int i = 0; i < 3; i++) {
      player1.stealCard();
      player2.stealCard();
    }
  }

  @override
  void roundInit() => changeState(RoundInitState());

  @override
  bool isNextRound() => true;
}