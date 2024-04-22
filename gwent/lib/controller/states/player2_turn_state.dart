import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/models/players/abstract_player.dart';
import 'package:gwent/controller/states/play_card_p2_state.dart';
import 'package:gwent/controller/states/play_cards_p1_state.dart';

class Player2TurnState extends AbstractStateController{
  @override
  void handle() {
    int sec1 = controller!.getBoard().getStrengthSection1();
    AbstractPlayer player2 = controller!.getPlayer2();
    int sec2 = controller!.getBoard().getStrengthSection2() + player2.getHandStrength();
    

    if((sec2 >= sec1 && player2.getNumberOfUnitCards() > 0) || (sec2 <= sec1 && player2.getNumberOfWeatherCards() > 0)){
      playCardP2();
    } else {
      playCardsP1();
    }

  }

  @override
  void playCardP2(){
    changeState(PlayCardP2State());
  }

  @override
  void playCardsP1(){
    changeState(PlayCardsP1State());
  }

  @override
  bool isPlayer2Turn() => true;
}