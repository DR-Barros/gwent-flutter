import 'package:gwent/models/board/board_section.dart';
import 'package:gwent/models/cards/card.dart';
import 'package:gwent/models/cards/weather_card.dart';
import 'package:gwent/models/cards/corp_card.dart';
import 'package:gwent/models/cards/distance_card.dart';
import 'package:gwent/models/cards/siege_card.dart';
import 'package:gwent/models/players/abstract_player.dart';

class Board{
  final BoardSection section1 = BoardSection(); // the board section of player 1
  final BoardSection section2 = BoardSection(); // the board section of player 2
  final List<WeatherCard> weather = []; // the weather cards on the board
  Board();

  /// plays a card on the board section of the player 1
  void playCardPlayer1(AbstractPlayer player, int index){
    final ModelCard card = player.playCard(index);
    card.apply(this, section1);
    card.assignZone(section1, weather);
  }

  /// plays a card on the board section of the player 2
  void playCardPlayer2(AbstractPlayer player, int index){
    final ModelCard card = player.playCard(index);
    card.apply(this, section2);
    card.assignZone(section2, weather);
  }

  /// returns the total strength of the section 1
  int getStrengthSection1(){
    return section1.getStrength();
  }

  /// returns the total strength of the section 2
  int getStrengthSection2(){
    return section2.getStrength();
  }


  /// returns the corp section of the player 1
  List<CorpCard> getCorpSection1(){
    return section1.getCorp();
  }

  /// returns the distance section of the player 1
  List<DistanceCard> getDistanceSection1(){
    return section1.getDistance();
  }

  /// returns the siege section of the player 1
  List<SiegeCard> getSiegeSection1(){
    return section1.getSiege();
  }

  /// returns the corp section of the player 2
  List<CorpCard> getCorpSection2(){
    return section2.getCorp();
  }

  /// returns the distance section of the player 2
  List<DistanceCard> getDistanceSection2(){
    return section2.getDistance();
  }

  /// returns the siege section of the player 2
  List<SiegeCard> getSiegeSection2(){
    return section2.getSiege();
  }

  /// returns the weather cards on the board
  List<WeatherCard> getWeather(){
    return weather;
  }

  /// removes all the cards from the board
  void clean(){
    section1.clean();
    section2.clean();
    weather.clear();
  }

  /// clear th weather effect from the board
  void clearWeatherEffect(){
    section1.clearWeatherEffect();
    section2.clearWeatherEffect();
  }

  ///  applies the fog effect to the board
  void applyFogEffect(){
    section1.applyFogEffect();
    section2.applyFogEffect();
  }

  /// applies the rain effect to the board
  void applyRainEffect(){
    section1.applyRainEffect();
    section2.applyRainEffect();
  }

  /// applies the  frost effect to the board
  void applyFrostEffect(){
    section1.applyFrostEffect();
    section2.applyFrostEffect();
  }
}