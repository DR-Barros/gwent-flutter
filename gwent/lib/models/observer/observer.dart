import 'package:gwent/controller/abstract_controller.dart';

abstract class Observer {
  void update(dynamic response);

  void setGameController(AbstractController gameController);
}