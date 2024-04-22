import 'package:gwent/controller/abstract_controller.dart';
import 'package:gwent/controller/states/abstract_state_controller.dart';
import 'package:gwent/controller/states/start_state.dart';
import 'package:gwent/models/board/board.dart';
import 'package:gwent/models/observer/observer.dart';
import 'package:gwent/models/observer/subject.dart';
import 'package:gwent/models/players/abstract_player.dart';
import 'package:gwent/models/players/user_player.dart';

class Controller implements AbstractController{
  AbstractPlayer? player1;
  AbstractPlayer? player2;
  Board? board;
  List<Observer> observers = [];
  bool _isFinish = false;
  AbstractStateController _state = StartState();

  Controller(){
    _state.setController(this);
  }

  @override
  void setState(AbstractStateController aState) {
    _state = aState;
    _state.setController(this);
  }

  @override
  bool getIsFinish() {
    return _isFinish;
  }

  @override
  void resetGame() {
    _isFinish = false;
  }

  @override
  void loose(Subject o) {
    UserPlayer user = o as UserPlayer;
    isFinishGame();
    print("${user.getName()} LOOSE");
  }

  @override
  void handleState() {
    _state.handle();
  }

  @override
  void start() {
    _state.start();
  }

  @override
  void roundInit() {
    _state.roundInit();
  }

  @override
  void player1Turn() {
    _state.player1Turn();
  }

  @override
  void player2Turn() {
    _state.player2Turn();
  }

  @override
  void playCardP1() {
    _state.playCardP1();
  }

  @override
  void playCardP2() {
    _state.playCardP2();
  }

  @override
  void playCardsP1() {
    _state.playCardsP1();
  }

  @override
  void playCardsP2() {
    _state.playCardsP2();
  }

  @override
  void finishRound() {
    _state.finishRound();
  }

  @override
  void nextRound() {
    _state.nextRound();
  }

  @override
  void finishGame() {
    _state.finishGame();
  }

  @override
  bool isStart() {
    return _state.isStart();
  }

  @override
  bool isRoundInit() {
    return _state.isRoundInit();
  }

  @override
  bool isPlayer1Turn() {
    return _state.isPlayer1Turn();
  }

  @override
  bool isPlayer2Turn() {
    return _state.isPlayer2Turn();
  }

  @override
  bool isPlayCardP1() {
    return _state.isPlayCardP1();
  }

  @override
  bool isPlayCardP2() {
    return _state.isPlayCardP2();
  }

  @override
  bool isPlayCardsP1() {
    return _state.isPlayCardsP1();
  }

  @override
  bool isPlayCardsP2() {
    return _state.isPlayCardsP2();
  }

  @override
  bool isFinishRound() {
    return _state.isFinishRound();
  }

  @override
  bool isNextRound() {
    return _state.isNextRound();
  }

  @override
  bool isFinishGame() {
    return _state.isFinishGame();
  }
}