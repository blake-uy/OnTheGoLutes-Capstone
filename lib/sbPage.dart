import 'package:flutter/material.dart';
import 'sbScheduleScrap.dart';

class SBPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<SBPage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
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
              background: Image.asset('images/sb.jpg', fit: BoxFit.cover),
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
                        child: Text("SCHEDULE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("ROSTER", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("COACHES", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("STATISTICS", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("RECRUITS", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
                                BorderSide(color: Colors.grey, width: 1.0)),
                            color: Colors.black,
                          ),
                          // color: Colors.amber,
                          alignment: Alignment.center,

                          ///////////////
                          // SCHEDULE //
                          //////////////

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
                    itemCount: sbPlayers.length,
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
                                    image: sbPlayers[index].image,
                                  )
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Center(child: Column(
                                  children: <Widget>[
                                    Text(sbPlayers[index].number + " " + sbPlayers[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                    Text(sbPlayers[index].position + " / " + sbPlayers[index].height + " / " + sbPlayers[index].year,
                                        style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                    Text(sbPlayers[index].hometown + " / " + sbPlayers[index].highSchool, style: TextStyle(fontSize: 15.7, color: Colors.white), textAlign: TextAlign.center,),
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
                Center(child: Text("TAB FIVE")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SBPlayers
{
  SBPlayers({this.number, this.name, this.year, this.hometown, this.highSchool, this. position, this.height, this.image});
  final String number;
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String position;
  final String height;
  final NetworkImage image;
}

List<SBPlayers> sbPlayers = <SBPlayers>[
  SBPlayers(number: "#00", name: "Raynna Mekaru", year: "Junior", hometown: "Kaneohe, HI", highSchool: "Maryknoll", position: "OF", height: """ 5'4" """, image: NetworkImage('https://golutes.com/images/2020/11/19/Mekaru.JPG?width=80')),
  SBPlayers(number: "#1", name: "Mari Foster", year: "Junior", hometown: "Honolulu, HI", highSchool: "Roosevelt", position: "P/OF", height: """ 5'7" """, image: NetworkImage('https://golutes.com/images/2020/11/19/M_Foster.JPG?width=80')),
  SBPlayers(number: "#2", name: "Taylor Shigeta", year: "Sophomore", hometown: "Honolulu, HI", highSchool: "Pearl City", position: "C/OF", height: """ 5'2" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Shigeta.JPG?width=80")),
  SBPlayers(number: "#3", name: "Kayla Terlecki", year: "Sophomore", hometown: "Queen Creek, AZ", highSchool: "Desert Ridge", position: "2B/OF", height: """ 5'4" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Terlecki.JPG?width=80")),
  SBPlayers(number: "#4", name: "Mattie Cheever", year: "Freshman", hometown: "Plumas Lake, CA", highSchool: "Lindhurst", position: "UTIL", height: """ 5'2" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Cheever.JPG?width=80")),
  SBPlayers(number: "#5", name: "Shanelle Lum", year: "Senior", hometown: "Honolulu, HI", highSchool: "Moanalua", position: "P/OF", height: """ 5'5" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Lum.JPG?width=80")),
  SBPlayers(number: "#6", name: "Marley Dyer", year: "Junior", hometown: "Honolulu, HI", highSchool: "Iolani", position: "P/OF", height: """ 5'5" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Dyer.JPG?width=80")),
  SBPlayers(number: "#7", name: "Rylie Wada", year: "Freshman", hometown: "Honolulu, HI", highSchool: "Iolani", position: "UTIL", height: """ 5'1" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Wada.JPG?width=80")),
  SBPlayers(number: "#8", name: "Chaella Galapon", year: "Junior", hometown: "Federal Way, WA", highSchool: "Federal Way", position: "INF", height: """ 5'5" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Galapon.JPG?width=80")),
  SBPlayers(number: "#9", name: "Anna Foster", year: "Sophomore", hometown: "Stanwood, WA", highSchool: "Stanwood", position: "C/1B", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/11/19/A_Foster.JPG?width=80")),
  SBPlayers(number: "#10", name: "Eden Radke", year: "Sophomore", hometown: "Kirkland, WA", highSchool: "Juanita", position: "1B", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Radke.JPG?width=80")),
  SBPlayers(number: "#11", name: "Casey Wright", year: "Freshman", hometown: "Federal Way, WA", highSchool: "Federal Way", position: "C/OF", height: """ 5'5" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Wright.JPG?width=80")),
  SBPlayers(number: "#12", name: "Kennedy Robillard", year: "Senior", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "P/INF", height: """ 5'4" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Robillard.JPG?width=80")),
  SBPlayers(number: "#13", name: "Erin McGrath", year: "Junior", hometown: "Woodinville, WA", highSchool: "Woodinville", position: "UTIL", height: """ 5'4" """, image: NetworkImage("https://golutes.com/images/2020/11/19/McGrath.JPG?width=80")),
  SBPlayers(number: "#14", name: "Arabella Perez", year: "Freshman", hometown: "Folsom, CA", highSchool: "Vista Del Lago", position: "OF", height: """ 5'4" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Perez.JPG?width=80")),
  SBPlayers(number: "#15", name: "Kamryn Adkins", year: "Sophomore", hometown: "Menlo, WA", highSchool: "Willapa Valley", position: "P", height: """ 5'3" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Adkins.JPG?width=80")),
  SBPlayers(number: "#16", name: "Nanea Kalama", year: "Junior", hometown: "Kaneohe, HI", highSchool: "Saint Francis", position: "INF", height: """ 5'4" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Kalama.jpg?width=80")),
  SBPlayers(number: "#17", name: "Emma Ware", year: "Freshman", hometown: "North Plains, OR", highSchool: "Glencoe", position: "UTIL/P", height: """ 5'5" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Ware.JPG?width=80")),
  SBPlayers(number: "#18", name: "Kennadi Wuebel", year: "Sophomore", hometown: "Bothell, WA", highSchool: "Inglemoor", position: "INF/OF", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Wuebel.JPG?width=80")),
  SBPlayers(number: "#19", name: "Georgina Soliai", year: "Sophomore", hometown: "Lakewood, WA", highSchool: "Clover", position: "INF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Soliai.JPG?width=80")),
  SBPlayers(number: "#21", name: "Kassidi Dean", year: "Freshman", hometown: "Mill Creek, WA", highSchool: "HM Jackson", position: "INF", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/19/25.jpg?width=80")),
  SBPlayers(number: "#22", name: "Cassidy Conrad", year: "Junior", hometown: "Monroe, WA", highSchool: "Monroe", position: "P/INF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Conrad.JPG?width=80")),
  SBPlayers(number: "#26", name: "Molly House", year: "Freshman", hometown: "Seattle, WA", highSchool: "Cleveland Stem", position: "P/INF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/19/House.JPG?width=80")),
  SBPlayers(number: "#40", name: "Cailey Collado", year: "Sophomore", hometown: "Huntington Beach, CA", highSchool: "Ocean View", position: "2B", height: """ 5'3" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Collado.JPG?width=80")),
  SBPlayers(number: "#41", name: "Marie Palomo", year: "Sophomore", hometown: "Auburn, WA", highSchool: "Jefferson", position: "INF", height: """ 5'3" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Palomo.JPG?width=80")),
  SBPlayers(number: "#43", name: "Mikayla Chun", year: "Sophomore", hometown: "Honolulu, HI", highSchool: "Hawaii Baptist", position: "C/3B", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Chun.JPG?width=80")),
  SBPlayers(number: "#49", name: "Z Ellis", year: "Junior", hometown: "Queen Creek, AZ", highSchool: "American Academy", position: "P", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Ellis.JPG?width=80")),
  SBPlayers(number: "#88", name: "Sarah Potwin", year: "Senior", hometown: "Rochester, WA", highSchool: "Tumwater", position: "3B", height: """ 5'4" """, image: NetworkImage("https://golutes.com/images/2020/11/19/Potwin.JPG?width=80")),
];


