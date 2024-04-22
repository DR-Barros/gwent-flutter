import 'package:gwent/models/cards/effects/unit_effect.dart';
import 'package:gwent/models/board/board_section.dart';
import 'package:gwent/models/cards/abstract_unit_card.dart';

class MoralEffect extends UnitEffect {
  @override
  String getName() {
    return 'Refuerzo de moral';
  }

  @override
  void apply(BoardSection boardSection, AbstractUnitCard card) {
    card.applyMoralEffect(boardSection);
  }
}