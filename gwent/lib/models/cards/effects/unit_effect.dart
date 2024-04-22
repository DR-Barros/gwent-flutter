import 'package:gwent/models/board/board_section.dart';
import 'package:gwent/models/cards/abstract_unit_card.dart';

abstract class UnitEffect {
  String getName();
  void apply(BoardSection boardSection, AbstractUnitCard card);
}