import 'package:gwent/models/board/board_section.dart';
import 'package:gwent/models/cards/effects/unit_effect.dart';
import 'package:gwent/models/cards/abstract_unit_card.dart';

/// Bond effect
class BondEffect implements UnitEffect {
  @override
  String getName() {
    return 'Vinculo estrecho';
  }

  @override
  void apply(BoardSection boardSection, AbstractUnitCard card) {
    card.applyBondEffect(boardSection);
  }
}
