import 'package:gwent/controller/abstract_controller.dart';
import 'package:gwent/models/observer/subject.dart';

abstract class Observer {
  void update(Subject subject, String response);

  void setGameController(AbstractController gameController);
}