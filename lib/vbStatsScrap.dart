import 'package:http/http.dart';
import 'package:html/parser.dart';

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
  Response response = await client.get('https://golutes.com/sports/womens-volleyball/stats/2020');

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

  ////////////////////////////////////////
// Dictionary to Put Scraped Data Into //
  ///////////////////////////////////////
  for (var link in links)
  {
    linkMap.add(
        {
          'dataPoint ' : link.innerHtml,
        }
    );
  }

  ////////////////////////////////////////////////////
  // Just Get the Values From Dictionary (linkMap) //
  ///////////////////////////////////////////////////
  for (int y = 2; y < 42; y++)
  {
    stats.addAll(linkMap[y].values);
  }

  /////////////////////////////////////////
  // Dictionary for Scraped Stat Labels //
  ////////////////////////////////////////
  for (var link in name)
  {
    nameMap.add(
        {
          'Name ' : link.innerHtml,
        }
    );
  }

  //////////////////////
  // Just Stat Labels //
  //////////////////////
  for (int i = 1; i < 21; i++)
  {
    statName.addAll(nameMap[i].values);
  }
}