import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';

////////////////////////////
// Lists for Parsed Data //
///////////////////////////
List <String> gameInfo = [];
List <String> justOpponents = [];
List <String> dateAndTime = [];

/////////////////////////////////////
// For Separating the Date & Time //
////////////////////////////////////
List <String> months = [];
List <String> dayNumOnly = [];
List <String> timeOnly = [];
List <String> timeLabels = ['PM', 'PM', 'AM', 'PM', 'PM', 'PM', 'PM', 'PM',
  'PM', 'PM', 'PM', 'PM', 'AM', 'PM', 'AM', 'PM', 'PM', 'AM', 'PM', 'PM', 'AM',
  'AM', 'PM', 'PM', 'PM', 'PM', 'PM', 'PM', 'AM', 'PM', 'PM', 'PM', 'AM','PM',
'PM', 'PM', 'PM', 'PM', 'PM', 'PM', 'AM', 'PM'];

///////////////
// OPTION 2 // => Create an Info Object
//////////////
class Info
{
  String opponent;
  String opponentLink;

  Info(this.opponent, this.opponentLink);
//Info.fromJson(Map<String, dynamic> json) : 'opponent' = json['Opponent'], 'link' = json['Link'];
}

///////////////////////////////////////////
// START OF PROGRAM TO GET SCRAPED DATA //
//////////////////////////////////////////
Future initiate(BaseClient client) async
{
  Response response = await client.get('https://golutes.com/sports/softball/schedule');

  if (response.statusCode != 200)
  {
    return response.body;
  }

  //////////////////
  // HTML Parser //
  /////////////////
  var document = parse(response.body);

  //List<Element> teamStatsBar = document.getElementsByClassName('flex flex-wrap large-flex-no-wrap row');
  // List<Element> teamStatsBar = document.getElementsByClassName('ul.flexflex-wraplarge-flex-no-wraprow > li.large-flex-item-1flexflex-columnflex-justify-centerflex-align-centerx-small-3columns');
  //
  // for (var i = 0; i < teamStatsBar.length; i++)
  //   {
  //     print(teamStatsBar[i]);
  //   }

  List links = document.querySelectorAll('div.sidearm-schedule-game-opponent-name > a');

  List<Map<String, String>> linkMap = [];

  ///////////////////////////////
  // Opponent Name + Date/Time //
  //////////////////////////////
  for (var link in links)
  {
    linkMap.add(
        {
          'Opponent: ' : link.attributes['aria-label'],
        }
    );
  }

  ////////////////////////////////////////////////////////////////////////
  // Add "values" aka data from Dictionary (linkMap) to gameInfo (list) //
  ////////////////////////////////////////////////////////////////////////
  //print(logos);

  // Info.fromJson(Map<String, dynamic> json) : 'opponent' = json['Opponent'], 'link' = json['Link'];

  //print("MAP");
  //print(linkMap.length);
  //print(linkMap[0].values);

  int x = 0;
  for (var i in linkMap)
  {

    gameInfo.addAll(linkMap[x].values);
    x++;

  }

  /////////////////////////////////////////////////////////////////////
// Split the Opponent, Date & Time Values (For Formatting Purposes) //
  ////////////////////////////////////////////////////////////////////
  for (int i = 0; i < gameInfo.length ; i++)
  {
    String temp = gameInfo[i];
    List <String> tempList = temp.split(" on ");

    justOpponents.add(tempList[0]);

    dateAndTime.add(tempList[1]);
  }

  ///////////////////////////////////
  // Split the Date & Time Values //
  //////////////////////////////////
  for (int i = 0; i < dateAndTime.length; i++)
  {
    String temp = dateAndTime[i];

    List <String> tempList = temp.split(" ");

    months.add(tempList[0]);
    dayNumOnly.add(tempList[1]);
    timeOnly.add(tempList[2]);
  }
  //print("WOMEN'S SOFTBALL GAME INFO");
  // print(justOpponents);
  // print(dateAndTime);
  //print(gameInfo);
  //return json.encode(linkMap);
}


