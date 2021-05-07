import 'package:flutter/material.dart';
import 'wgolfScheduleScrap.dart';

class Players
{
  const Players({this.name, this.year, this.hometown, this.highSchool, this.image});
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final NetworkImage image;
}

const List<Players> players = const <Players>[
  const Players(name: "Paphawee Chungtrakool", year: "Junior", hometown: "Bangkok,Thailand", highSchool: "Firm Foundation Christian", image: NetworkImage('https://golutes.com/images/2020/10/15/Chungtrakool.JPG?width=300')),
  const Players(name: "Emily Fisher", year: "Freshman", hometown: "Kent, WA", highSchool: "Kentwood HS", image: NetworkImage("https://golutes.com/images/2020/10/15/Fisher.JPG?width=300")),
  const Players(name: "Jacqueline Jackson", year: "Sophomore", hometown: "Littleton, CO", highSchool: "Columbine HS", image: NetworkImage("https://golutes.com/images/2020/10/15/Jackson.JPG?width=300")),
  const Players(name: "Sophie Kass", year: "Senior", hometown: "Bethesda, MD", highSchool: "Walter Johnson HS", image: NetworkImage("https://golutes.com/images/2020/10/15/Kass.JPG?width=300")),
  const Players(name: "Nicole Matiatos", year: "Senior", hometown: "Auburn, WA", highSchool: "Auburn Riverside HS", image: NetworkImage("https://golutes.com/images/2020/10/15/Matiatos.JPG?width=300")),
  const Players(name: "Lila Ridge", year: "Senior", hometown: "Lakewood, WA", highSchool: "Lakes HS", image: NetworkImage("https://golutes.com/images/2020/10/15/Ridge.JPG?width=300")),
  const Players(name: "Mallory Rusoff", year: "Freshman", hometown: "Portland, OR", highSchool: "Franklin HS", image: NetworkImage("https://golutes.com/images/2020/10/15/Rusoff.JPG?width=300")),
  const Players(name: "Lauryn Tsukimura", year: "Junior", hometown: "Camas, WA", highSchool: "Camas HS", image: NetworkImage("https://golutes.com/images/2020/10/15/Tsukimura.JPG?width=300")),
];

class WGolfPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<WGolfPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/wgolf.jfif', fit: BoxFit.cover),
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
                        child: Text("SCHEDULE", style: TextStyle(fontWeight: FontWeight.bold))
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("ROSTER", style: TextStyle(fontWeight: FontWeight.bold))
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("COACHES", style: TextStyle(fontWeight: FontWeight.bold))
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("STATISTICS", style: TextStyle(fontWeight: FontWeight.bold))
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
                            //color: Colors.black,
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

                ////////////
                // ROSTER //
                ////////////
                Container(
                  // color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: players.length,
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
                                            image: players[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Center(child:
                                          Text(players[index].name, style: TextStyle(fontSize: 23.0,), textAlign: TextAlign.center,)),
                                          Text(players[index].year + " / " + players[index].hometown,
                                              style: TextStyle(fontSize: 17.0, ), textAlign: TextAlign.center),
                                          Text(players[index].highSchool, style: TextStyle(fontSize: 16.0,), textAlign: TextAlign.center,),
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