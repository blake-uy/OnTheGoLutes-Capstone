import 'package:capstone3/crewPage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<SecondPage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.grey,
            expandedHeight: 175.0,

            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
           //   title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
              background: Image.asset('images/bsb2.jpg', fit: BoxFit.cover),
            ),

            bottom: TabBar(
              labelColor: Colors.black,
              //labelPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              unselectedLabelColor: Colors.white,
             // indicatorSize: TabBarIndicatorSize.label,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
               // color: Colors.white.withOpacity(0.8),
                color: Colors.black,
              ),
              isScrollable: true,
              tabs: [
                Tab (
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("SCHEDULE", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("ROSTER", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("COACHES", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("STATISTICS", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
                    )
                ),
              ],
               controller: controller,
            ),
          ),

          SliverFillRemaining(
            child: TabBarView(
              //controller: controller ,
              controller: controller,
              children: <Widget>[
                CustomScrollView(slivers: <Widget>[
                  SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index){
                          return Container(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            height: 100.0,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey, width: 1.0)),
                              color: Colors.black
                              ),

                            alignment: Alignment.center,
                            
                            child:Column(children: <Widget>[
                              Text("Coming soon")
                            ],)
                            
                            );
                      },
                  ),)
                ]),

                Container(
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: basePlayers.length,
                        itemBuilder: (BuildContext context, int index)
                        {
                          return Container (
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border(bottom: BorderSide(color: Colors.grey, width: 2.0)),
                              ),
                              child: Row(
                                  children: <Widget> [
                                    Container(
                                      height: 120.0,
                                      width: 100.0,
                                      margin: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: basePlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(basePlayers[index].number + " " + basePlayers[index].name, style: TextStyle(fontSize: 25.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(basePlayers[index].position + " / " + basePlayers[index].height + " / " + basePlayers[index].year,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(basePlayers[index].hometown + " / " + basePlayers[index].highSchool, style: TextStyle(fontSize: 16.5, color: Colors.white), textAlign: TextAlign.center,),
                                          // Text(players[index].hometown + " / " + players[index].highSchool),
                                        ]
                                    )
                                    ),
                                  ]
                              )
                          );
                        }
                    )
                ),
                Container(
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: baseCoaches.length,
                        itemBuilder: (BuildContext context, int index)
                        {
                          return Container (
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border(bottom: BorderSide(color: Colors.grey, width: 2.0)),
                              ),
                              child: Row(
                                  children: <Widget> [
                                    Container(
                                      height: 120.0,
                                      width: 100.0,
                                      margin: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: baseCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(baseCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(baseCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),

                                        ]
                                    )
                                    ),
                                  ]
                              )
                          );
                        }
                    )
                ),
                Center(child: Text("TAB FOUR")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BasePlayers
{
  BasePlayers({this.number, this.name, this.year, this.hometown, this.highSchool, this. position, this.height, this.image});
  final String number;
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String position;
  final String height;
  final NetworkImage image;
}

List<BasePlayers> basePlayers = <BasePlayers>[
  BasePlayers(number: "#1", name: "Austin Gormley", year: "Senior", hometown: "Renton, WA", highSchool: "Kentridge", position: "INF", height: """ 5'9" """, image: NetworkImage('https://golutes.com/images/2019/11/20/Gormley.JPG?width=80')),
  BasePlayers(number: "#2", name: "Tori Doten", year: "Senior", hometown: "Salem, OR", highSchool: "South Salem", position: "SS", height: """ 5'11" """, image: NetworkImage('https://golutes.com/images/2020/11/2/Doten.JPG?width=80')),
  BasePlayers(number: "#3", name: "Connor Lemma", year: "Junior", hometown: "Walla Walla, WA", highSchool: "Walla Walla", position: "C", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Lemma.JPG?width=80")),
  BasePlayers(number: "#4/31", name: "Spencer Howell", year: "Sophomore", hometown: "Auburn, WA", highSchool: "Seattle Christian", position: "P", height: """ 6'5" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Howell.JPG?width=80")),
  BasePlayers(number: "#5", name: "Blake Wichert", year: "Senior", hometown: "Chehalis, WA", highSchool: "W.F. West", position: "P", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Wichert.JPG?width=80")),
  BasePlayers(number: "#6", name: "Garrett Wong", year: "Sophomore", hometown: "Kent, WA", highSchool: "Kentridge", position: "OF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Wong.JPG?width=80")),
  BasePlayers(number: "#7", name: "Tommy Snyder", year: "Junior", hometown: "Vancouver, WA", highSchool: "Evergreen", position: "P/1B", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Snyder.JPG?width=80")),
  BasePlayers(number: "#8", name: "Jack Hannah", year: "Junior", hometown: "Gig Harbor, WA", highSchool: "Cascade Christian", position: "P", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2019/11/20/Hannah.JPG?width=80")),
  BasePlayers(number: "#9", name: "Alex Boyd", year: "Junior", hometown: "Puyallup, WA", highSchool: "Rogers", position: "OF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Boyd.JPG?width=80")),
  BasePlayers(number: "#10", name: "Kenton Robillard", year: "Senior", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "INF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Robillard.JPG?width=80")),
  BasePlayers(number: "#11", name: "Sean Kauffman", year: "Sophomore", hometown: "Brier, WA", highSchool: "Inglemoor", position: "OF", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Kauffman.JPG?width=80")),
  BasePlayers(number: "#12", name: "Noah Claxton Ward", year: "Freshman", hometown: "University Place, WA", highSchool: "Curtis", position: "OF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Ward.JPG?width=80")),
  BasePlayers(number: "#13", name: "Armond Swanson III", year: "Senior", hometown: "Des Moines, WA", highSchool: "Mt. Rainier", position: "INF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Swanson.JPG?width=80")),
  BasePlayers(number: "#14", name: "Cole Forde", year: "Senior", hometown: "Burien, WA", highSchool: "Seattle Christian", position: "P", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Forde.JPG?width=80")),
  BasePlayers(number: "#15", name: "Ashton Barton", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Rogers", position: "INF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Barton.JPG?width=80")),
  BasePlayers(number: "#16", name: "Rowan Amann", year: "Freshman", hometown: "Ashland, OR", highSchool: "Ashland", position: "INF", height: " ", image: NetworkImage("https://golutes.com/images/2020/11/2/Amann.JPG?width=80")),
  BasePlayers(number: "#17", name: "Joshua Gibson", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Emerald Ridge", position: "INF/P", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Gibson.JPG?width=80")),
  BasePlayers(number: "#18", name: "Justin Tucker", year: "Junior", hometown: "Renton, WA", highSchool: "Hazen", position: "P", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Tucker.JPG?width=80")),
  BasePlayers(number: "#19", name: "Samuel Flynn", year: "Sophomore", hometown: "Lacey, WA", highSchool: "River Ridge", position: "INF", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Flynn.JPG?width=80")),
  BasePlayers(number: "#20", name: "Alex Gregory", year: "Senior", hometown: "Seattle, WA", highSchool: "Garfield", position: "P", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Gregory.JPG?width=80")),
  BasePlayers(number: "#21", name: "Andy Schmitz", year: "Junior", hometown: "Aurora, OR", highSchool: "North Marion", position: "C/SS", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Schmitz.JPG?width=80")),
  BasePlayers(number: "#22", name: "Trevor Mason", year: "Freshman", hometown: "Mead, WA", highSchool: "Mt. Spokane", position: "C/P", height: """ 6'4" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Mason.JPG?width=80")),
  BasePlayers(number: "#23", name: "Evan Ringler", year: "Junior", hometown: "Henderson, NV", highSchool: "Foothill", position: "P", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Ringler.JPG?width=80")),
  BasePlayers(number: "#24", name: "Jordan Haworth", year: "Junior", hometown: "Gig Harbor, WA", highSchool: "Gig Harbor", position: "INF", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Haworth.JPG?width=80")),
  BasePlayers(number: "#25", name: "Noah Ferguson", year: "Sophomore", hometown: "Salem, OR", highSchool: "South Salem", position: "P/INF", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Ferguson.JPG?width=80")),
  BasePlayers(number: "#26", name: "Cade Hamel", year: "Freshman", hometown: "Puyallup, WA", highSchool: "Emerald Ridge", position: "P/INF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Hamel.JPG?width=80")),
  BasePlayers(number: "#27", name: "Jonathan Cohen", year: "Freshman", hometown: "Bothell, WA", highSchool: "North Creek", position: "P", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Cohen.JPG?width=80")),
  BasePlayers(number: "#28", name: "Ethan Keintz", year: "Freshman", hometown: "Helena, MT", highSchool: "Capital", position: "P/OF", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Keintz.JPG?width=80")),
  BasePlayers(number: "#29", name: "Anthony Adams", year: "Freshman", hometown: "Auburn, WA", highSchool: "O'Dea", position: "P/OF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Adams.JPG?width=80")),
  BasePlayers(number: "#30", name: "Kyler Gerber", year: "Freshman", hometown: "Kent, WA", highSchool: "Kentridge", position: "INF", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Gerber.JPG?width=80")),
  BasePlayers(number: "#32", name: "Cody Bentley", year: "Junior", hometown: "Puyallup, WA", highSchool: "Emerald Ridge", position: "C", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Bentley.JPG?width=80")),
  BasePlayers(number: "#33", name: "Jude Rowley", year: "Freshman", hometown: "University Place, WA", highSchool: "Curtis", position: "INF", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Rowley.JPG?width=80")),
  BasePlayers(number: "#34", name: "Matt Franceschina", year: "Junior", hometown: "Kent, WA", highSchool: "Kentwood", position: "P/INF", height: """ 6'4" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Franceschina.JPG?width=80")),
  BasePlayers(number: "#35", name: "Gunnar Sebright", year: "Freshman", hometown: "Spokane, WA", highSchool: "North Central", position: "C", height: " ", image: NetworkImage("https://golutes.com/images/2020/11/2/Sebright.JPG?width=80")),
  BasePlayers(number: "#36", name: "Christian Cambridge", year: "Sophomore", hometown: "Eagle River, AK", highSchool: "Chugiak", position: "OF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Cambridge.JPG?width=80")),
  BasePlayers(number: "#37", name: "Cole Trotignon", year: "Sophomore", hometown: "Kent, WA", highSchool: "Kentwood", position: "1B/P", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Trotignon.JPG?width=80")),
  BasePlayers(number: "#44", name: "Nathan Anderson", year: "Senior", hometown: "Graham, WA", highSchool: "Graham Kapowsin", position: "P", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Anderson.JPG?width=80")),
  BasePlayers(number: "#48", name: "Sam Richardson", year: "Freshman", hometown: "Bakersfield, CA", highSchool: "Stockdale", position: "OF", height: " ", image: NetworkImage("https://golutes.com/images/2020/11/2/Richardson.JPG?width=80")),
  BasePlayers(number: "#50", name: "Miles Winter", year: "Freshman", hometown: "Bothell, WA", highSchool: "Bothell", position: "INF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Winter.JPG?width=80")),


];

class BaseCoaches
{
  BaseCoaches({this.name, this.title, this.image});
  final String name;
  final String title;
  final NetworkImage image;
}

List<BaseCoaches> baseCoaches = <BaseCoaches>[
  BaseCoaches(name: "Nolan Soete", title: "Head Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//soete.jpg?width=80')),
  BaseCoaches(name: "Sean Taunt", title: "Associate Head Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//taunt.jpg?width=80')),
  BaseCoaches(name: "Scott Richards", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//richards.jpg?width=80')),
  BaseCoaches(name: "Landon Packard", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//landon_packard_bsb_2016_17.jpg?width=80')),
  BaseCoaches(name: "Corey Nelson", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//cory_nelson_bsb_2015_16.jpg?width=80')),
];
