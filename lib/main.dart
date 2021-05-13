import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:system_settings/system_settings.dart';
import 'package:webview_flutter/webview_flutter.dart';

/////////////////////////////
// INDIVIDUAL SPORT PAGES //
////////////////////////////
import 'secondpage.dart'; // This is the Baseball Page
import 'mbskPage.dart';
import 'wsocPage.dart';
import 'msocPage.dart';
import 'crewPage.dart';
import 'sbPage.dart';
import 'wbskPage.dart';
import 'mgolf.dart';
import 'wgolf.dart';
import 'mswim.dart';
import 'wswim.dart';
import 'mxcPage.dart';
import 'wxcPage.dart';
import 'footballPage.dart';
import 'mtenPage.dart';
import 'wtenPage.dart';
import 'wtfPage.dart';
import 'mtfPage.dart';
import 'vbPage.dart';

//////////////////
// EXTRA PAGES //
/////////////////
import 'post.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:flutter/foundation.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'playerPortal.dart';
import 'pageview.dart';
import 'instaPage.dart';
import 'settingsPage.dart';

//////////////////////////
// WEB SCRAPING IMPORTS //
//////////////////////////
import 'package:http/http.dart';
import 'webscrap1.dart' as webscraper1;
import 'wbskScheduleScrap.dart' as wbskScheduleScrap;
import 'sbScheduleScrap.dart' as sbScheduleScrap;
import 'wswimScheduleScrap.dart' as wswimScheduleScrap;
import 'volleyballScheduleScrap.dart' as vbScheduleScrap;
import 'wtenScheduleScrap.dart' as wtenScheduleScrap;
import 'wxcScheduleScrap.dart' as wxcScheduleScrap;
import 'wgolfScheduleScrap.dart' as wgolfScheduleScrap;
import 'crewScheduleScrap.dart' as crewScheduleScrap;
import 'wtfScheduleScrap.dart' as wtfScheduleScrap;

///////////////////////////
// WEB SCRAPING IMPORTS // => STATS
//////////////////////////
import 'wsocStatsScrap.dart' as wsocStatsScrap;
import 'vbStatsScrap.dart' as vbStatsScrap;
import 'wbskStatsScrap.dart' as wbskStatsScrap;

//////////////////////
// FOR WEB SCRAPING //
//////////////////////
Future main(List<String> arguments) async
{
  ///////////////////////
  // SCHEDULE SCRAPERS //
  ///////////////////////
  print(await webscraper1.initiate(Client()));
  print(await wbskScheduleScrap.initiate(Client()));
  print(await sbScheduleScrap.initiate(Client()));
  print(await wswimScheduleScrap.initiate(Client()));
  print(await vbScheduleScrap.initiate(Client()));
  print(await wtenScheduleScrap.initiate(Client()));
  print(await wxcScheduleScrap.initiate(Client()));
  print(await wgolfScheduleScrap.initiate(Client()));
  print(await crewScheduleScrap.initiate(Client()));
  print(await wtfScheduleScrap.initiate(Client()));

  ////////////////////
  // STAT SCRAPERS //
  ///////////////////
  print(await wsocStatsScrap.initiate(Client()));
  print(await vbStatsScrap.initiate(Client()));
  print(await wbskStatsScrap.initiate(Client()));

  ////////////////////
  // Main File Call //
  ////////////////////
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Root Widget of App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "PLU ATHLETICS",
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        theme: ThemeData(
            fontFamily: 'Quicksand',),
       // brightness: Brightness.light,),
        //primaryColor: Colors.amberAccent),
        home: HomePage(),
    );
  }
}

//////////////////////////////////////////////
// Create the Class for the (Sports) Tiles //
/////////////////////////////////////////////
class Tile
{
  String title;
  List<Tile> children;
  Tile(this.title, [this.children = const <Tile>[]]);
}

/////////////////////
// List of Sports //
////////////////////
List<Tile> sports = <Tile> [
  new Tile('Baseball'),
  new Tile('Basketball',
      <Tile> [
        new Tile("Men's Basketball"),
        new Tile("Women's Basketball"),
      ],
  ),
  new Tile('Cross Country',
      <Tile> [
        new Tile("Men's Cross Country"),
        new Tile("Women's Cross Country"),
      ],
  ),
  new Tile ('Football'),
  new Tile ('Golf',
      <Tile> [
        new Tile("Men's Golf"),
        new Tile("Women's Golf"),
      ],
  ),
  new Tile ('Rowing'),
  new Tile('Soccer',
      <Tile> [
        new Tile("Men's Soccer"),
        new Tile("Women's Soccer"),
      ],
  ),
  new Tile('Softball'),
  new Tile('Swimming',
      <Tile> [
        new Tile ("Men's Swimming"),
        new Tile("Women's Swimming"),
      ],
  ),
  new Tile("Tennis",
      <Tile> [
        new Tile("Men's Tennis"),
        new Tile("Women's Tennis"),
      ],
  ),
  new Tile("Track & Field",
      <Tile> [
        new Tile("Men's Track & Field"),
        new Tile("Women's Track & Field"),
      ],
  ),
  new Tile("Volleyball"),
];

class SportsTiles extends StatelessWidget
{
  final Tile sportsTile;
  final BuildContext c;
  SportsTiles(this.sportsTile, this.c);

  @override
  Widget build (BuildContext context)
  {
    return _buildTiles(sportsTile);
  }

  Widget _buildTiles (Tile t)
  {
    // If a Sport doesn't have a Men's & Women's Program
    // EG: Volleyball
    if (t.children.isEmpty)
      {
        return new ListTile(
            title: new Text(t.title, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Quicksand')),
            onTap: ()
            {
              if (t.title == "Baseball")
                {
                  Navigator.push(c, MaterialPageRoute(builder: (context) => SecondPage()));
                }

              else if (t.title == "Men's Basketball")
                {
                  Navigator.push(c, MaterialPageRoute(builder: (context) => MBSKPage()));
                }

              else if (t.title == "Women's Basketball")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => WBSKPage()));
              }

              else if (t.title == "Women's Soccer")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => WSOCPage()));
              }

              else if (t.title == "Men's Soccer")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => MSOCPage()));
              }

              else if (t.title == "Rowing")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => CrewPage()));
              }

              else if (t.title == "Softball")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => SBPage()));
              }

              else if (t.title == "Women's Golf")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => WGolfPage()));
              }

              else if (t.title == "Men's Golf")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => MGolfPage()));
              }

              else if (t.title == "Men's Swimming")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => MSwimPage()));
              }

              else if (t.title == "Women's Swimming")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => WSwimPage()));
              }

              else if (t.title == "Women's Cross Country")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => WXCPage()));
              }

              else if (t.title == "Men's Cross Country")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => MXCPage()));
              }

              else if (t.title == "Football")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => FBPage()));
              }

              else if (t.title == "Women's Track & Field")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => WTFPage()));
              }

              else if (t.title == "Men's Track & Field")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => MTFPage()));
              }

              else if (t.title == "Men's Tennis")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => MTenPage()));
              }

              else if (t.title == "Women's Tennis")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => WTenPage()));
              }

              else if (t.title == "Volleyball")
              {
                Navigator.push(c, MaterialPageRoute(builder: (context) => VBPage()));
              }
            }
        );
      }

    return new ExpansionTile(
      title: new Text(t.title, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Quicksand')),
      children: t.children.map(_buildTiles).toList(),
    );
  }
}

class HomePage extends StatefulWidget
{
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage>
{
  _launchURL(String url)
  {
    launch(url);
  }

  @override
  Widget build (BuildContext context)
  {
    String _url = 'https://portal.stretchinternet.com/plu/#';

    return Scaffold (
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget> [
            DrawerHeader(
              child: Center( child: Text("Welcome to Luteville", style: TextStyle(fontSize: 40.0, fontFamily: 'Quicksand'))),
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
            )),

            ListTile(
                title: Text("Upcoming Events", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Quicksand')),
              onTap: () async => {
                await launch('https://golutes.com/calendar?vtype=list')
              }
            ),

            ListTile(
              title: Text("Live Stream", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Quicksand')),
                enableFeedback: true,
              onTap: () => _launchURL(_url),
            ),

            ListTile(
              title: Text("News", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Quicksand')),
              enableFeedback: true,
              onTap: () => _launchURL('https://golutes.com/archives')
            ),

            ListTile(
              title: Text("Instagram", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Quicksand')),
              onTap: () async => {
                await launch('https://www.instagram.com/golutes/')
              }
            ),

            ListTile(
              title: Text("Twitter", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Quicksand'),),
              onTap: () async => {
              //  await Navigator.push(context, MaterialPageRoute(builder: (context) => Instagram()))
                await launch('https://twitter.com/golutes')
              },
              enableFeedback: true,
            ),

            ListTile(
              title: Text("PLU Portal", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Quicksand'),),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => PlayerPortalPage()));
              }
            ),

            ListTile(
              title: Text("Settings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Quicksand')),
              onTap: () {
                //SystemSettings.app();
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              }
            )]),
          ])
      ),

        body: CustomScrollView(
            slivers: <Widget> [
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.black,
                //floating: true,
                expandedHeight: 175.0,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  centerTitle: true,
                  title: Text(' PLU ATHLETICS ', style: TextStyle( fontFamily: 'Quicksand', fontSize: 30,)),
                  background: Image.asset('images/mtrack.jpg', fit: BoxFit.cover),
          ),
        ),

        SliverList (
          delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index)
              {
                // onTap: (context) {
                //   Navigator.push(context, MaterialPageRoute (builder: (context) => SecondPage()));
                // };
                return Container(
                 // height: 600.0,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.fromLTRB(0, .5, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  padding: const EdgeInsets.all(22),
                  child: Column(
                    children: <Widget> [SportsTiles(sports[index], context),],
                  ),
                );
              }, childCount: sports.length,
          )
        ),
      ]
    )
    );
  }
}

class _DrawerClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size)
  {
    Path path = Path();

   // path.lineTo(size.width, 2);

    path.moveTo(50, 0);
    path.quadraticBezierTo(0, size.height/2, 50, size.height);


    //path.quadraticBezierTo(size.width * 5, size.height/2, 0, size.height);

   // path.lineTo();

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);


   // path.lineTo(size.width, size.height);
   // path.lineTo(size.width, 0);

    //path.lineTo(0, size.height/2);
    // path.lineTo(50, size.height);
   // path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

// class HomePage extends StatefulWidget
// {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build (BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(title: Text('PLU Athletics')),
//     );
//   }
// }