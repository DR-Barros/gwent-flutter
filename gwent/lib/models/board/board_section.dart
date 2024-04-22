import 'package:gwent/models/cards/corp_card.dart';

class BoardSection {
  List<CorpCard> corp = [];
  List<DistanceCard> distance = [];
  List<SiegeCard> siege = [];

  /// adds a card to the section corp
  void addCorp(CorpCard card) {
    corp.add(card);
  }

  /// adds a card to the section distance
  void addDistance(DistanceCard card) {
    distance.add(card);
  }

  /// adds a card to the section siege
  void addSiege(SiegeCard card) {
    siege.add(card);
  }

  /// returns the total strength of the board section
  int getStrength() {
    return corp.fold(0, (previousValue, element) => previousValue + element.getStrength()) +
        distance.fold(0, (previousValue, element) => previousValue + element.getStrength()) +
        siege.fold(0, (previousValue, element) => previousValue + element.getStrength());
  }

  /// list of all the cards in the section corp
  List<CorpCard> getCorp() {
    return corp;
  }

  /// list of all the cards in the section distance
  List<DistanceCard> getDistance() {
    return distance;
  }


  /// list of all the cards in the section siege
  List<SiegeCard> getSiege() {
    return siege;
  }

  /// removes all the cards from the board section
  void clean() {
    corp.clear();
    distance.clear();
    siege.clear();
  }

  /// applies the bond effect to the card in the corp section that has the same name
  void applyBondEffect(CorpCard card) {
    corp.where((c) => c.name == card.name).forEach((c) => c.doubleStrength());
  }

  /// applies the bond effect to the card in the distance section that has the same name
  void applyBondEffectDistance(DistanceCard card) {
    distance.where((c) => c.name == card.name).forEach((c) => c.doubleStrength());
  }


  /// applies the bond effect to the card in the siege section that has the same name
  void applyBondEffectSiege(SiegeCard card) {
    siege.where((c) => c.name == card.name).forEach((c) => c.doubleStrength());
  }

  /// applies the moral effect to the all cards in the corp section
  void applyMoralEffectCorp() {
    corp.forEach((c) => c.moreStrength());
  }

  /// applies the moral effect to the all cards in the distance section
  void applyMoralEffectDistance() {
    distance.forEach((c) => c.moreStrength());
  }

  /// applies the moral effect to the all cards in the siege section
  void applyMoralEffectSiege() {
    siege.forEach((c) => c.moreStrength());
  }

  /// clear the weather effect from the board section
  void clearWeatherEffect() {
    corp.forEach((c) => c.clearWeatherEffect());
    distance.forEach((c) => c.clearWeatherEffect());
    siege.forEach((c) => c.clearWeatherEffect());
  }

  /// applies the fog effect to the board section
  void applyFogEffect() {
    corp.forEach((c) => c.applyFogEffect());
    distance.forEach((c) => c.applyFogEffect());
    siege.forEach((c) => c.applyFogEffect());
  }

  /// applies the rain effect to the board section
  void applyRainEffect() {
    corp.forEach((c) => c.applyRainEffect());
    distance.forEach((c) => c.applyRainEffect());
    siege.forEach((c) => c.applyRainEffect());
  }

  /// applies the frost effect to the board section
  void applyFrostEffect() {
    corp.forEach((c) => c.applyFrostEffect());
    distance.forEach((c) => c.applyFrostEffect());
    siege.forEach((c) => c.applyFrostEffect());
  }
}
