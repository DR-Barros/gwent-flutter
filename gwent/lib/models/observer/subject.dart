import 'package:gwent/models/observer/observer.dart';

abstract class Subject {
  void registerObserver(Observer observer);

  void notifyObservers(dynamic response);
}