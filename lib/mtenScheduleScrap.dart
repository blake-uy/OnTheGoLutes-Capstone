import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';

List <String> gameInfo = [];
List <String> justOpponents = [];
List <String> dateAndTime = [];

class Info {
  String opponent;
  String opponentLink;

  Info(this.opponent, this.opponentLink);
}
Future initiate(BaseClient client) async{
  Response response = await client.get('https://golutes.com/sports/mens-tennis/schedule');

  if (response.statusCode != 200) {
    return response.body;
  }

  var document = parse(response.body);

  List links = document.querySelectorAll('div.sidearm-schedule-game-opponent-name > a');

  List<Map<String, String>> linkMap = [];

  for (var link in links){
    linkMap.add(
        {
          'Opponent: ' : link.attributes['aria-label'],
        }
    );
  }

  print("MAP");

  int x = 0;
  for (var i in linkMap){
    gameInfo.addAll(linkMap[x].values);
    x++;
  }

  for (int i = 0; i < gameInfo.length ; i++) {
    String temp = gameInfo[i];

    List <String> tempList = temp.split(" on ");

    justOpponents.add(tempList[0]);

    dateAndTime.add(tempList[1]);
  }
  print("MEN'S SWIM GAME INFO");
}
