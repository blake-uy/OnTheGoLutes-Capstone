import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:system_settings/system_settings.dart';

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

//////////////////////////
// WEB SCRAPING IMPORTS //
//////////////////////////
import 'package:http/http.dart';
import 'webscrap1.dart' as webscraper1;
import 'streamLaunch.dart';
import 'wbskScheduleScrap.dart' as wbskScheduleScrap;
import 'sbScheduleScrap.dart' as sbScheduleScrap;
import 'wswimScheduleScrap.dart' as wswimScheduleScrap;
import 'volleyballScheduleScrap.dart' as vbScheduleScrap;
import 'wtenScheduleScrap.dart' as wtenScheduleScrap;

//////////////////////
// FOR WEB SCRAPING //
//////////////////////
Future main(List<String> arguments) async
{
  print(await webscraper1.initiate(Client()));
  print(await wbskScheduleScrap.initiate(Client()));
  print(await sbScheduleScrap.initiate(Client()));
  print(await wswimScheduleScrap.initiate(Client()));
  print(await vbScheduleScrap.initiate(Client()));
  print(await wtenScheduleScrap.initiate(Client()));
  runApp(MyApp());
}

//////////////////////////
// FOR LIVE STREAM URL //
/////////////////////////
// class StreamLaunch extends StatefulWidget
// {
//   @override
//   _StreamLaunch createState() => _StreamLaunch();
// }
//
// class _StreamLaunch extends State<StreamLaunch>
// {
//   Future <void>? _launched;
//
//   Future <void> _launchURL(String url) async
//   {
//     if (await canLaunch(url))
//     {
//       await launch(url);
//     }
//
//     else
//     {
//       throw 'COULD NOT LAUNCH $url';
//     }
//   }
//
// }

// String _url = 'https://portal.stretchinternet.com/plu/#';
//void _launchURL() async => await canLaunch(_url) ? await launch(_url) : throw 'Could NOT launch $_url';

// class HomePageHeader implements SliverPersistentHeaderDelegate
// {
//   HomePageHeader(
//   {
//    // this.layoutGroup,
//     this.onLayoutToggle,
//     this.minExtent,
//     this.maxExtent,
//   });
//
//   //final LayoutGroup layoutGroup;
//   final VoidCallback onLayoutToggle;
//
//   double minExtent;
//   double maxExtent;
//
//   @override
//   Widget build (BuildContext context, double shrinkOffset, bool overlapsContent)
//   {
//     return Stack(
//       fit: StackFit.expand,
//       children: [
//         Image.asset('images/mtrack.jpg', fit: BoxFit.cover),
//
//         Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.transparent,
//                 Colors.black54,
//               ],
//               stops: [0.5, 1.0],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               tileMode: TileMode.repeated,
//             ),
//           ),
//         ),
//
//         Positioned(
//           left: 16.0,
//           right: 16.0,
//           bottom: 16.0,
//           child: Text(
//             'PLU ATHLETICS',
//             style: TextStyle(fontSize: 30.0, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate)
//   {
//     return true;
//   }
//
//   @override
//   FloatingHeaderSnapConfiguration get snapConfiguration => null;
//
//   @override
//   OverScrollHeaderStretchConfiguration get stretchConfiguration => OverScrollHeaderStretchConfiguration();
//
//   @override
//   PersistentHeaderShowOnScreenConfiguration get showOnScreenConfiguration => PersistentHeaderShowOnScreenConfiguration();
//
//   @override
//   TickerProvider get vsync => throw UnimplementedError();
// }
//
// class HomePage extends StatelessWidget
// {
//   HomePage ({Key key, this.onLayoutToggle}) : super(key: key);
//
//  // final LayoutGroup layoutGroup;
//   final VoidCallback onLayoutToggle;
//
//   @override
//   Widget build (BuildContext context)
//   {
//     return Scaffold(
//       body: _customScrollView(context),
//     );
//   }
//
//   Widget _customScrollView (BuildContext context)
//   {
//     return Container(
//       child: CustomScrollView(
//         slivers: <Widget> [
//           SliverPersistentHeader(
//             pinned: true,
//             delegate: HomePageHeader(
//              // layoutGroup: layoutGroup,
//               onLayoutToggle: onLayoutToggle,
//               minExtent: 150.0,
//               maxExtent: 250.0,
//             )
//           ),
//         ]
//       )
//     );
//
//   }
//}



// void main() {
//   runApp(MyApp());
// //   runApp(Post());
//   // runApp(PageViews());
// }

class MyApp extends StatelessWidget {
  // Root Widget of App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "PLU ATHLETICS",
        theme: ThemeData(fontFamily: 'Quicksand'),
        home: HomePage(),
    );
  }
}

// Create the Class for the (Sports) Tiles
class Tile
{
  String title;
  List<Tile> children;
  Tile(this.title, [this.children = const <Tile>[]]);
}

// List of Sports
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
            //subtitle: Image.asset('images/bsb.jpg', fit: BoxFit.cover),
            title: new Text(t.title, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Quicksand')),
         //   onTap: () => print("Hello!")
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
           // minLeadingWidth: 10.0,
        );
      }

    return new ExpansionTile(
      //backgroundColor: Colors.grey,
     // expandedAlignment: Alignment.center,
     // initiallyExpanded: true,
     // key: new PageStorageKey<Tile>(t),

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
 // Future <void> _launched;

  // Future <void> _launchURL(String url)
  // {
  //   return launch(url);
  // }

  @override
  Widget build (BuildContext context)
  {
    String _url = 'https://portal.stretchinternet.com/plu/#';

    return Scaffold (
     // endDrawer: ClipPath(
      //  clipper: _DrawerClipper(),
      //  child: Drawer(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
         // padding: EdgeInsets.only(top: 48),
          children: <Widget> [
            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget> [
            DrawerHeader(
              child: Center( child: Text("Welcome to Luteville", style: TextStyle(fontSize: 40.0, fontFamily: 'Quicksand'))),
              decoration: BoxDecoration(color: Colors.amber),
            ),

            ListTile(
                title: Text("Upcoming Events", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Quicksand')),
              onTap: () async => {
                await launch('https://golutes.com/calendar?vtype=list')
              }
            ),

            ListTile(
               // tileColor: Colors.grey,
              title: Text("Live Stream", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Quicksand')),
                enableFeedback: true,
              onTap: () => _launchURL(_url),
              // onTap: () => setState(() {
              //   _launched = _launchURL(_url);
              // }),
            ),

            ListTile(
             // tileColor: Colors.grey,
              title: Text("News", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Quicksand')),
              enableFeedback: true,
              onTap: () => _launchURL('https://golutes.com/archives')
            ),

            ListTile(
              //tileColor: Colors.grey,
              title: Text("Feedback", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Quicksand')),
              onTap: () {
                Navigator.pop(context);
              },
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
                SystemSettings.app();
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



                  /////////////////
                  // OPTION !!! ///
                  /////////////////
                  // child: new SportsTiles(sports[index]),

                  /////////////////
                  // OPTION !!! ///
                  /////////////////
                  // child: ListView.builder(
                  //     itemBuilder: (BuildContext context, int index) {
                  //       return new SportsTiles(sports[index]);
                  //     },
                  // itemCount: sports.length,
                  // ),

                  /////////////////
                  // OPTION !!! ///
                  /////////////////
                  // child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: <Widget> [
                  //     ListView.builder(
                  //         itemBuilder: (BuildContext context, int index)
                  //     {
                  //       return new SportsTiles(sports[index]);
                  //     },
                  //     itemCount: sports.length,
                  //     ),
                  //   ],
                  // )
                );
              }, childCount: sports.length,
          )
        ),

        // SliverToBoxAdapter(
        //   child: Center(
        //     child: SizedBox(
        //       height: 2000,
        //       child: Text('Scroll'),
        //     )
        //   )
        // ),

        // SliverGrid(
        //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 200.0,
        //     mainAxisExtent: 0.0,
        //     crossAxisSpacing: 0.0,
        //     childAspectRatio: 0.75,
        //   ),
        //
        //   delegate: SliverChildBuilderDelegate(
        //       (BuildContext context, int index)
        //   {
        //     return Container(
        //       alignment: Alignment.center,
        //       color: Colors.teal[100 * (index % 9)],
        //       //color: Colors.transparent,
        //      // padding: EdgeInsets.all(5.0),
        //       child: Text("HELLO",
        //       ),
        //     );
        //   },
        //     childCount: 9,
        //
        //   ),
        // )


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