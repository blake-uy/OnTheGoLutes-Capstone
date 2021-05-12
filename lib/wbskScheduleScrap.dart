import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';

///////////////
// OPTION 1 // => Add elements to a single list and iterate through that list
//////////////
List <String> gameInfo = [];
List <String> justOpponents = [];
List <String> dateAndTime = [];

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
  Response response = await client.get('https://golutes.com/sports/womens-basketball/schedule');

  if (response.statusCode != 200)
  {
    return response.body;
  }

  // HTML Parser
  var document = parse(response.body);

  //List<Element> teamStatsBar = document.getElementsByClassName('flex flex-wrap large-flex-no-wrap row');
  // List<Element> teamStatsBar = document.getElementsByClassName('ul.flexflex-wraplarge-flex-no-wraprow > li.large-flex-item-1flexflex-columnflex-justify-centerflex-align-centerx-small-3columns');
  //
  // for (var i = 0; i < teamStatsBar.length; i++)
  //   {
  //     print(teamStatsBar[i]);
  //   }

  List links = document.querySelectorAll('div.sidearm-schedule-game-opponent-name > a');

  List opponentLogo = document.querySelectorAll('img.lazyloaded');
  //List<Element> links = document.querySelectorAll('div.sidearm-common-promotion > section.sidearm-schedule-record > ul.flex flex-wrap');
  //List<Element> links = document.querySelectorAll('div.sidearm-common-promotion sidearm-common-promotion-below-header');
  List<Map<String, String>> linkMap = [];
  List<Map<String, dynamic>> logos = [];

  ///////////////////////////////
  // Opponent Name + Date/Time //
  //////////////////////////////
  for (var link in links)
  {
    linkMap.add(
        {
          // 'Match: ' : link.innerHtml,
          'Opponent: ' : link.attributes['aria-label'],
          //'Link: ' : link.attributes['href'],
          // 'Element' : link.innerHtml,
        }
    );
  }

  ////////////////////
  // Opponent Logo //
  ///////////////////
  for (var x in opponentLogo)
  {
    logos.add(
        {
          'Logo': x.attributes['src']
        }
    );

  }

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


  for (int i = 0; i < gameInfo.length ; i++)
  {
    String temp = gameInfo[i];
    //print(temp);
    //print(temp.split("on"));
    List <String> tempList = temp.split(" on ");

    justOpponents.add(tempList[0]);

    // List <String> splitDateAndTime = tempList[1].split
    dateAndTime.add(tempList[1]);
  }



  //print("WOMEN's BBALL GAME INFO");
  // print(justOpponents);
  // print(dateAndTime);
  //print(gameInfo);
  //return json.encode(linkMap);
}


