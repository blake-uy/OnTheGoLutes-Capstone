import 'package:flutter/material.dart';
import 'mbskScheduleScrap.dart';

class MBSKPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<MBSKPage> with SingleTickerProviderStateMixin {
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

            //snap: true,
            //floating: true,
            expandedHeight: 175.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              //   title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
              background: Image.asset('images/mbsk.jpg', fit: BoxFit.cover),
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
                        itemCount: bskPlayers.length,
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
                                            image: bskPlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(bskPlayers[index].number + " " + bskPlayers[index].name, style: TextStyle(fontSize: 25.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(bskPlayers[index].position + " / " + bskPlayers[index].height + " / " + bskPlayers[index].year,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(bskPlayers[index].hometown + " / " + bskPlayers[index].highSchool, style: TextStyle(fontSize: 16.5, color: Colors.white), textAlign: TextAlign.center,),
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
                        itemCount: bskCoaches.length,
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
                                            image: bskCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(bskCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(bskCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),

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

class BskPlayers
{
  BskPlayers({this.number, this.name, this.year, this.hometown, this.highSchool, this. position, this.height, this.image});
  final String number;
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String position;
  final String height;
  final NetworkImage image;
}

List<BskPlayers> bskPlayers = <BskPlayers>[
  BskPlayers(number: "#0", name: "Ethan Smith", year: "Sophomore", hometown: "Vancouver, WA", highSchool: "Union", position: "G", height: """ 6'1" """, image: NetworkImage('https://golutes.com/images/2020/5/28/ethan_smith.jpg?width=80')),
  BskPlayers(number: "#1", name: "Kelton Williams", year: "Senior", hometown: "Renton, WA", highSchool: "Lindbergh", position: "G", height: """ 5'9" """, image: NetworkImage('https://golutes.com/images/2020/11/3/Williams_K.JPG?width=80')),
  BskPlayers(number: "#2", name: "Sam Morasch", year: "Freshman", hometown: "Covington, WA", highSchool: "Kentlake", position: "G", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Morasch.JPG?width=80")),
  BskPlayers(number: "#4", name: "Grayson Peet", year: "Senior", hometown: "Port Angeles, WA", highSchool: "Port Angeles", position: "G", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Peet.JPG?width=80")),
  BskPlayers(number: "#5", name: "Jordan Thomas", year: "Junior", hometown: "Chehalis, WA", highSchool: "W.F. West", position: "G", height: """ 6'4" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Thomas.JPG?width=80")),
  BskPlayers(number: "#10", name: "Luke Worley", year: "Senior", hometown: "Wenatchee, WA", highSchool: "Wenatchee", position: "G", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Worley.JPG?width=80")),
  BskPlayers(number: "#11", name: "Jackson Reisner", year: "Freshman", hometown: "Burlington, WA", highSchool: "Burlington-Edison", position: "G/F", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Riesner.JPG?width=80")),
  BskPlayers(number: "#12", name: "Trey Garey", year: "Junior", hometown: "Kimberly, ID", highSchool: "Kimberly", position: "G", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2019/10/23/Garey.jpg?width=80")),
  BskPlayers(number: "#20", name: "Seth Hall", year: "Senior", hometown: "Vancouver, WA", highSchool: "Prairie", position: "G", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Hall.JPG?width=80")),
  BskPlayers(number: "#21", name: "Peyton Peterson", year: "Freshman", hometown: "Tumwater, WA", highSchool: "Tumwater", position: "G/F", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Peterson.JPG?width=80")),
  BskPlayers(number: "#22", name: "Sean McCurdy", year: "Sophomore", hometown: "Spanaway, WA", highSchool: "Bethel", position: "F", height: """ 6'5" """, image: NetworkImage("https://golutes.com/images/2020/11/3/McCurdy.JPG?width=80")),
  BskPlayers(number: "#23", name: "Brett Williams", year: "Sophomore", hometown: "North Bend, WA", highSchool: "Mount Si", position: "G/F", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Williams_B.JPG?width=80")),
  BskPlayers(number: "#24", name: "Sam Noland", year: "Freshman", hometown: "Tualatin, OR", highSchool: "Tualatin", position: "G", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Noland.JPG?width=80")),
  BskPlayers(number: "#30", name: "Ty Thompson", year: "Freshman", hometown: "Shelton, WA", highSchool: "Shelton", position: "G/F", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Thompson.JPG?width=80")),
  BskPlayers(number: "#32", name: "Tyler Ashmore", year: "Junior", hometown: "Centralia, WA", highSchool: "Centralia", position: "F", height: """ 6'5" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Ashmore.JPG?width=80")),
  BskPlayers(number: "#33", name: "Brandin Riedel", year: "Freshman", hometown: "Olympia, WA", highSchool: "Capital", position: "F/C", height: """ 6'7" """, image: NetworkImage("https://golutes.com/images/2020/11/3/Riedel.JPG?width=80")),

];

class BskCoaches
{
  BskCoaches({this.name, this.title, this.image});
  final String name;
  final String title;
  final NetworkImage image;
}

List<BskCoaches> bskCoaches = <BskCoaches>[
  BskCoaches(name: "Chad Murray", title: "Head Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//murray.jpg?width=80')),
  BskCoaches(name: "Alex Schilter", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2020/10/12/schilter.jpg?width=80')),
];
