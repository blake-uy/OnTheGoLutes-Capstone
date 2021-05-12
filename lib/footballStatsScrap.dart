import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';

///////////////
// OPTION 1 // => Add elements to a single list and iterate through that list
//////////////
List <String> stats = [];
List <String> statName = [];

///////////////////////////////////////////
// START OF PROGRAM TO GET SCRAPED DATA //
//////////////////////////////////////////
Future initiate(BaseClient client) async
{
  Response response = await client.get('https://golutes.com/sports/football/stats/2020');

  if (response.statusCode != 200)
  {
    return response.body;
  }

  // HTML Parser
  var document = parse(response.body);

  List links = document.getElementsByClassName('text-right');
  List name = document.getElementsByClassName('hide-on-small-down');

  List<Map<String, String>> linkMap = [];
  List<Map<String, String>> nameMap = [];

  ///////////////////////////////
  // Opponent Name + Date/Time //
  //////////////////////////////
  for (var link in links)
  {
    // print(link);
    linkMap.add(
        {
          'dataPoint ' : link.innerHtml,
        }
    );
  }

  for (int y = 2; y < 90; y++) {

    stats.addAll(linkMap[y].values);

  }

  //print(stats);

  for (var link in name)
  {
    nameMap.add(
        {
          'Name ' : link.innerHtml,
        }
    );
  }

  for (int i = 1; i < 50; i++)
  {
    statName.addAll(nameMap[i].values);
  }

  //print(statName);

  //print(stats.length);
  //print(statName.length);



}