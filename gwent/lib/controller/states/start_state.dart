import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/round_init_state.dart';
import 'package:gwent/models/board/board.dart';
import 'package:gwent/models/cards/card.dart';
import 'package:gwent/models/cards/structures/deck.dart';
import 'package:gwent/models/observer/gem_observer.dart';
import 'package:gwent/models/observer/observer.dart';
import 'package:gwent/models/players/abstract_player.dart';
import 'package:gwent/models/players/user_player.dart';

class StartState extends AbstractStateController{
  @override
  void handle() {
    AbstractPlayer player1 = UserPlayer("jugador", _createDeck());
    AbstractPlayer player2 = UserPlayer("CPU", _createDeck());
    controller!.assignPlayer1(player1);
    controller!.assignPlayer2(player2);
    controller!.assignBoard(Board());
    Observer observer = GemObserver();
    observer.setGameController(controller!);
    player1.registerObserver(observer);
    _stealCards(player1);
    _stealCards(player2);
  }

  @override
  void roundInit() =>changeState(RoundInitState());

  @override
  bool isStart() => true;

  Deck _createDeck(){
    List<ModelCard> cards = [];
    ...
    return Deck(cards);
  }

  void _stealCards(AbstractPlayer player){
    for(int i = 0; i < 10; i++){
      player.stealCard();
    }
  }
}