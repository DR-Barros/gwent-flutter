import 'package:gwent/models/cards/corp_card.dart';
import 'package:gwent/models/cards/distance_card.dart';
import 'package:gwent/models/cards/siege_card.dart';

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
    int strength = 0;
    for (CorpCard c in corp){
      strength += c.getStrength();
    }
    for (DistanceCard c in distance){
      strength += c.getStrength();
    }
    for (SiegeCard c in siege){
      strength += c.getStrength();
    }
    return strength;
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
  void applyBondEffectCorp(CorpCard card) {
    corp.where((c) => c.getName() == card.getName()).forEach((c) => c.doubleStrength());
  }

  /// applies the bond effect to the card in the distance section that has the same name
  void applyBondEffectDistance(DistanceCard card) {
    distance.where((c) => c.getName() == card.getName()).forEach((c) => c.doubleStrength());
  }


  /// applies the bond effect to the card in the siege section that has the same name
  void applyBondEffectSiege(SiegeCard card) {
    siege.where((c) => c.getName() == card.getName()).forEach((c) => c.doubleStrength());
  }

  /// applies the moral effect to the all cards in the corp section
  void applyMoralEffectCorp() {
    for (CorpCard c in corp){
      c.moreStrength();
    }
  }

  /// applies the moral effect to the all cards in the distance section
  void applyMoralEffectDistance() {
    for (DistanceCard c in distance){
      c.moreStrength();
    }
  }

  /// applies the moral effect to the all cards in the siege section
  void applyMoralEffectSiege() {
    for (SiegeCard c in siege){
      c.moreStrength();
    }
  }

  /// clear the weather effect from the board section
  void clearWeatherEffect() {
    for (CorpCard c in corp){
      c.clearWeatherEffect();
    }
    for (DistanceCard c in distance){
      c.clearWeatherEffect();
    }
    for (SiegeCard c in siege){
      c.clearWeatherEffect();
    }
  }

  /// applies the fog effect to the board section
  void applyFogEffect() {
    for (CorpCard c in corp){
      c.applyFogEffect();
    }
    for (DistanceCard c in distance){
      c.applyFogEffect();
    }
    for (SiegeCard c in siege){
      c.applyFogEffect();
    }
  }

  /// applies the rain effect to the board section
  void applyRainEffect() {
    for (CorpCard c in corp){
      c.applyRainEffect();
    }
    for (DistanceCard c in distance){
      c.applyRainEffect();
    }
    for (SiegeCard c in siege){
      c.applyRainEffect();
    }
  }

  /// applies the frost effect to the board section
  void applyFrostEffect() {
    for (CorpCard c in corp){
      c.applyFrostEffect();
    }
    for (DistanceCard c in distance){
      c.applyFrostEffect();
    }
    for (SiegeCard c in siege){
      c.applyFrostEffect();
    }
  }
}
