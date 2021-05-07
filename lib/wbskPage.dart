import 'package:flutter/material.dart';
import 'wbskScheduleScrap.dart';

class WbskPlayers
{
  WbskPlayers({this.number, this.name, this.year, this.hometown, this.highSchool, this. position, this.height, this.image});
  final String number;
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String position;
  final String height;
  final NetworkImage image;
}

List<WbskPlayers> wbskplayers = <WbskPlayers> [
  WbskPlayers(number: "#4", name: "Katy Cook", year: "Freshman", hometown: "Tacoma, WA", highSchool: "Franklin Pierce", position: "F", height: """ 5'8" """, image: NetworkImage('https://golutes.com/images/2020/10/15/Cook.JPG?width=80')),
  WbskPlayers(number: "#5", name: "Alexis Kleven", year: "Freshman", hometown: "Kelso, WA", highSchool: "Kelso", position: "G", height: """ 5'4" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Kleven.JPG?width=80")),
  WbskPlayers(number: "#11", name: "Jorie Lambert", year: "Senior", hometown: "Lynnwood, WA", highSchool: "Mountlake Terrace", position: "G", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Lambert.JPG?width=80")),
  WbskPlayers(number: "#12", name: "Emma Janousek", year: "Senior", hometown: "Arlington, WA", highSchool: "Arlington", position: "G", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Janousek.JPG?width=80")),
  WbskPlayers(number: "#13", name: "Toni Thibert", year: "Sophomore", hometown: "Kent, WA", highSchool: "Kentlake", position: "G", height: """ 5'4" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Thibert.JPG?width=80")),
  WbskPlayers(number: "#20", name: "Holly Flynn", year: "Sophomore", hometown: "Spokane, WA", highSchool: "East Valley", position: "F", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Flynn.JPG?width=80")),
  WbskPlayers(number: "#21", name: "Mady Simmelink", year: "Freshman", hometown: "Spokane, WA", highSchool: "Central Valley", position: "G", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Simmelink.JPG?width=80")),
  WbskPlayers(number: "#22", name: "Hailey Marsh", year: "Senior", hometown: "University Place, WA", highSchool: "Curtis", position: "F", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Marsh.JPG?width=80")),
  WbskPlayers(number: "#23", name: "Alex Gallaher", year: "Sophomore", hometown: "Mukilteo, WA", highSchool: "Kamiak", position: "G", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2018/10/11/WBB_Gallaher_web.jpg?width=80")),
  WbskPlayers(number: "#30", name: "Katie Taylor", year: "Junior", hometown: "Shoreline, WA", highSchool: "Shorewood", position: "G", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2019/9/27/Taylor.JPG?width=80")),
  WbskPlayers(number: "#31", name: "Madison Mosier", year: "Freshman", hometown: "Longview, WA", highSchool: "Mark Morris", position: "G", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Mosier.JPG?width=80")),
  WbskPlayers(number: "#32", name: "Ava Edmondst", year: "Freshman", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "F", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Edmonds.JPG?width=800")),
  WbskPlayers(number: "#40", name: "Megan Drake", year: "Senior", hometown: "Whidbey Island, WA", highSchool: "South Whidbey", position: "F", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Drake.JPG?width=80")),
  WbskPlayers(number: "#42", name: "Madison Salisbury", year: "Senior", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "C", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Salisbury.JPG?width=80")),
  WbskPlayers(number: "#44", name: "Dakotah Chastain", year: "Freshman", hometown: "Spokane, WA", highSchool: "North Central", position: "F", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/10/15/Chastain.JPG?width=80")),
];


class WBSKPage extends StatefulWidget {
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<WBSKPage>
    with SingleTickerProviderStateMixin {
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
            pinned: true,
            backgroundColor: Colors.grey,
            elevation: 0,
            collapsedHeight: 57,
            expandedHeight: 175.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              //   title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
              background: Image.asset('images/wbsk.jpg', fit: BoxFit.cover),
            ),

            bottom: TabBar(
              labelColor: Colors.white,
              //labelPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              unselectedLabelColor: Colors.white,
              // indicatorSize: TabBarIndicatorSize.label,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                // color: Colors.white.withOpacity(0.8),
                color: Colors.black,
              ),
              isScrollable: true,
              tabs: [
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("SCHEDULE",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("ROSTER",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("COACHES",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("STATISTICS",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
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
                      (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey, width: 1.0)),
                            color: Colors.black,
                          ),
                          // color: Colors.amber,
                          alignment: Alignment.center,

                          ///////////////
                          // SCHEDULE //
                          //////////////
                          child: Column(children: <Widget>[
                            //Image( image: NetworkImage(finalLogos[index])),
                            Text(
                              justOpponents[index],
                              style: TextStyle(
                                  color: Colors.white, fontSize: 19.5),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              //dateAndTime[index],
                              months[index] + " " + dayNumOnly[index] + "  @ " + timeOnly[index] + timeLabels[index],
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.white),
                            ),
                          ]),
                        );
                      },
                      childCount: justOpponents.length,
                    ),
                  )
                ]),

                ////////////
                // ROSTER //
                ////////////
                Container(
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: wbskplayers.length,
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
                                            image: wbskplayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(wbskplayers[index].number + " " + wbskplayers[index].name, style: TextStyle(fontSize: 25.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(wbskplayers[index].position + " / " + wbskplayers[index].height + " / " + wbskplayers[index].year,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(wbskplayers[index].hometown + " / " + wbskplayers[index].highSchool, style: TextStyle(fontSize: 14.8, color: Colors.white), textAlign: TextAlign.center,),
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
                    child: Center(
                        child: Text("Data Coming Soon",
                            style: TextStyle(color: Colors.white)))),
                Container(
                    color: Colors.black,
                    child: Center(
                        child: Text("Data Coming Soon",
                            style: TextStyle(color: Colors.white)))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
