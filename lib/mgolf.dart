import 'package:flutter/material.dart';
import 'mgolfScheduleScrap.dart';

class MGolfPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<MGolfPage> with SingleTickerProviderStateMixin {
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
      //backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //  title: Text("BASEBALL"),
            // title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
            pinned: true,
            backgroundColor: Colors.grey,
            elevation: 0,
            expandedHeight: 175.0,
            //  collapsedHeight: 57,

            /////////////////////
            // FOR THE PICTURE //
            /////////////////////
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              //   title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
              background: Image.asset('images/mgolf.jpg', fit: BoxFit.cover),
            ),

            /////////////
            // TAB BAR //
            /////////////
            bottom: TabBar(
              labelColor: Colors.black,
              //labelPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              unselectedLabelColor: Colors.white,
              // indicatorSize: TabBarIndicatorSize.label,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                // color: Colors.white.withOpacity(0.8),
                color: Colors.white,
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
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey, width: 1)),
                                color: Colors.black
                            ),

                            alignment: Alignment.center,

                          child: Column(children: <Widget>[
                            Text(
                              justOpponents[index],
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              dateAndTime[index],
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.white),
                            )
                          ]),
                        );
                          },
                      childCount: justOpponents.length,
                    ),
                  )
                ]),

                Container(
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: golfPlayers.length,
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
                                            image: golfPlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(golfPlayers[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(golfPlayers[index].year,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(golfPlayers[index].hometown + " / " + golfPlayers[index].highSchool, style: TextStyle(fontSize: 16.5, color: Colors.white), textAlign: TextAlign.center,),
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
                        itemCount: golfCoaches.length,
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
                                            image: golfCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(golfCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(golfCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),

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

class GolfPlayers
{
  GolfPlayers({this.name, this.year, this.hometown, this.highSchool, this.image});
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final NetworkImage image;
}

List<GolfPlayers> golfPlayers = <GolfPlayers>[
  GolfPlayers(name: "Caden Arnold", year: "Freshman", hometown: "Gig Harbor, WA", highSchool: "Gig Harbor", image: NetworkImage('https://golutes.com/images/2020/10/14/Arnold.jpg?width=80')),
  GolfPlayers(name: "Jared Beals", year: "Senior", hometown: "Enumclaw, WA", highSchool: "Enumclaw", image: NetworkImage('https://golutes.com/images/2020/10/14/beals.jpg?width=80')),
  GolfPlayers(name: "Connor Kern", year: "Senior", hometown: "Olympia, WA", highSchool: "North Thurston", image: NetworkImage("https://golutes.com/images/2020/10/14/Kern.jpg?width=80")),
  GolfPlayers(name: "Cameron Klundt", year: "Junior", hometown: "Stanwood, WA", highSchool: "Stanwood", image: NetworkImage("https://golutes.com/images/2020/10/14/Klundt.jpg?width=80")),
  GolfPlayers(name: "Jordan Lau", year: "Senior", hometown: "Redmond, WA", highSchool: "Mount Si", image: NetworkImage("https://golutes.com/images/2020/10/14/Lau.jpg?width=80")),
  GolfPlayers(name: "Simon Luedtke", year: "Freshman", hometown: "Newberg, OR", highSchool: "Newberg", image: NetworkImage("https://golutes.com/images/2020/10/14/Luedtke.jpg?width=80")),
  GolfPlayers(name: "Gunner Nielsen", year: "Junior", hometown: "Olympia, WA", highSchool: "North Thurston", image: NetworkImage("https://golutes.com/images/2020/10/14/Nielsen.jpg?width=80")),
  GolfPlayers(name: "Ryan Pearson", year: "Senior", hometown: "Highlands Ranch, CO", highSchool: "Highlands Ranch", image: NetworkImage("https://golutes.com/images/2020/10/14/Pearson.jpg?width=80")),
  GolfPlayers(name: "Luke Rockwell", year: "Senior", hometown: "Issaquah, WA", highSchool: "Skyline", image: NetworkImage("https://golutes.com/images/2020/10/14/Rockwell.jpg?width=80")),

];

class GolfCoaches
{
  GolfCoaches({this.name, this.title, this.image});
  final String name;
  final String title;
  final NetworkImage image;
}

List<GolfCoaches> golfCoaches = <GolfCoaches>[
  GolfCoaches(name: "Kyle Drugge", title: "Head Coach", image: NetworkImage('https://golutes.com/images/2019/12/12/headshots_10_29_19_1389.JPG?width=80')),

];