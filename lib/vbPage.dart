import 'package:flutter/material.dart';
import 'volleyballScheduleScrap.dart';

class VballPlayers2
{
  VballPlayers2({this.number, this.name, this.year, this.hometown, this.highSchool, this. position, this.height, this.image});
  final String number;
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String position;
  final String height;
  final NetworkImage image;
}

List<VballPlayers2> vballplayers2 = <VballPlayers2>[
  VballPlayers2(number: "#1", name: "Lauren Wilson", year: "Senior", hometown: "Olympia, WA", highSchool: "Olympia", position: "OH", height: """ 5'11" """, image: NetworkImage('https://golutes.com/images/2020/9/28/Wilson.JPG?width=300')),
  VballPlayers2(number: "#2", name: "McKenzie Pfeiffer", year: "Junior", hometown: "Corona, CA", highSchool: "Corona Centennial", position: "OH", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Pfeiffer.JPG?width=300")),
  VballPlayers2(number: "#3", name: "Savanna Service", year: "Senior", hometown: "Federal Way, WA", highSchool: "Todd Beamer", position: "MB", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/9/28/service.JPG?width=300")),
  VballPlayers2(number: "#4", name: "Sianna Iverson", year: "Freshman", hometown: "Pasco, WA", highSchool: "Chiawana", position: "OH", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Iverson.JPG?width=300")),
  VballPlayers2(number: "#5", name: "Torie Takeuchi", year: "Freshman", hometown: "Aiea, HI", highSchool: "Iolani School", position: "DS", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Takeuchi.JPG?width=300")),
  VballPlayers2(number: "#6", name: "Baylee Johnson", year: "Sophomore", hometown: "Glenwood Springs, CO", highSchool: "Glenwood", position: "OH", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Johnson.JPG?width=300")),
  VballPlayers2(number: "#7", name: "Jazz Alston", year: "Junior", hometown: "Hilo, HI", highSchool: "Waiakea", position: "MB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Alston.JPG?width=300")),
  VballPlayers2(number: "#8", name: "Kristin Moniz", year: "Junior", hometown: "Kaneohe, HI", highSchool: "Hawaii Baptist", position: "L", height: """ 5'5" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Moniz.JPG?width=300")),
  VballPlayers2(number: "#9", name: "Hope Baldyga", year: "Junior", hometown: "Buckley, WA", highSchool: "White River", position: "DS/L", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Baldyga.JPG?width=300")),
  VballPlayers2(number: "#10", name: "Emily Dickson", year: "Freshman", hometown: "Pasco, WA", highSchool: "Tri-Cities Prep", position: "MB", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Dickson.JPG?width=3000")),
  VballPlayers2(number: "#11", name: "Emily Dulaney", year: "Junior", hometown: "Mililani, HI", highSchool: "Moanalua", position: "S", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Dulaney.JPG?width=300")),
  VballPlayers2(number: "#12", name: "Ne'a Moffett", year: "Freshman", hometown: "Shelton, WA", highSchool: "Shelton", position: "MB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Moffett.JPG?width=300")),
  VballPlayers2(number: "#13", name: "Emily Zink", year: "Junior", hometown: "Spokane, WA", highSchool: "Gonzaga Prep", position: "S", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Zink.JPG?width=300")),
  VballPlayers2(number: "#14", name: "Hailey Iha", year: "Sophomore", hometown: "Lihue, HI", highSchool: "Kauai", position: "MB", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Iha.JPG?width=300")),
  VballPlayers2(number: "#15", name: "Halle Hetzler", year: "Sophomore", hometown: "Kailua, HI", highSchool: "Le Jardin Academy", position: "L", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Hetzler.JPG?width=300")),
  VballPlayers2(number: "#16", name: "Madeline Dawson", year: "Sophomore", hometown: "Billings, MT", highSchool: "Billings West", position: "OH/DS", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Dawson.JPG?width=300")),
  VballPlayers2(number: "#17", name: "Breeze Bartle", year: "Freshman", hometown: "Hillsboro, OR", highSchool: "Liberty", position: "MB", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Bartle.JPG?width=3000")),
  VballPlayers2(number: "#18", name: "Jana Mulder", year: "Freshman", hometown: "Tacoma, WA", highSchool: "Washington", position: "DS", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2020/9/28/Mulder.JPG?width=300")),
];

class VBPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<VBPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/vb.jpg', fit: BoxFit.cover),
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
                        child: Text("SCHEDULE", style: TextStyle(fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("ROSTER", style: TextStyle(fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("COACHES", style: TextStyle(fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("STATISTICS", style: TextStyle(fontWeight: FontWeight.bold)),
                    )),

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
                                BorderSide(color: Colors.grey, width: 2.0)),
                            // color: Colors.black,
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
                                  color: Colors.black, fontSize: 19.5),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              //dateAndTime[index],
                              months[index] + " " + dayNumOnly[index] + "  @ " + timeOnly[index] + timeLabels[index],
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ]),
                        );
                      },
                      childCount: justOpponents.length,
                    ),
                  )
                ]),

                /////////////
                // ROSTER //
                ////////////
                Container(
                   // color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: vballplayers2.length,
                        itemBuilder: (BuildContext context, int index)
                        {
                          return Container (
                              decoration: BoxDecoration(
                               // color: Colors.black,
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
                                            image: vballplayers2[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(vballplayers2[index].number + " " + vballplayers2[index].name, style: TextStyle(fontSize: 25.0, ), textAlign: TextAlign.center,),
                                          Text(vballplayers2[index].position + " / " + vballplayers2[index].height + " / " + vballplayers2[index].year,
                                              style: TextStyle(fontSize: 20.0,), textAlign: TextAlign.center),
                                          Text(vballplayers2[index].hometown + " / " + vballplayers2[index].highSchool, style: TextStyle(fontSize: 14.8,), textAlign: TextAlign.center,),
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
                Center(child: Text("TAB THREE")),
                Center(child: Text("TAB FOUR")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}