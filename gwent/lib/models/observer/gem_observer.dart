import 'package:gwent/controller/abstract_controller.dart';
import 'package:gwent/models/observer/observer.dart';
import 'package:gwent/models/observer/subject.dart';

class GemObserver implements Observer{
  AbstractController? _gameController;

  @override
  void update(Subject subject, String response){
    if (response == "loose"){
      _gameController!.loose(subject);
    }
  }

  @override
  void setGameController(AbstractController gameController){
    _gameController = gameController;
  }
}