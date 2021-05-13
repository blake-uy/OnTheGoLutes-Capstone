import 'package:flutter/material.dart';
import 'wbskScheduleScrap.dart';
import 'wbskStatsScrap.dart';
import 'wbskStatsScrap.dart';

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

                //////////////
                // COACHES //
                /////////////
                Container(
                  //height: 800.0,
                    color: Colors.black,
                    child: ListView(scrollDirection: Axis.vertical, children: <Widget>
                    [
                      // GC HILLBURN START
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            // color: Colors.grey[400],
                              color: Colors.black,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.transparent))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2019/1/8/GC_Hillburn.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2019/1/8/GC_Hillburn.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("GC Hillburn",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Head Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("253-535-7353",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("hillbugc@plu.edu",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            ]),
                          ])),
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            //color: Colors.grey[400],
                              border: Border(
                                  bottom: BorderSide(color: Colors.white))),
                          child: Column(children: <Widget>[
                            Text(
                                "About GC: With 12 years of high school & collegiate coaching experience under his belt, Hillburn was named Head Coach for the Lutes back in 2020. ",
                                style: TextStyle(fontSize: 15.0, color: Colors.white)),
                          ])),
                      // GC HILLBURN END

                      // KAYCEE CREECH START
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.white))),
                          child: Center( child: Row(children: <Widget>[
                            SizedBox(width: 75.0),
                            Center( child: Column(children: <Widget>[
                              Center( child: Text("Kaycee Creech",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ])),
                          ]))),
                      // KAYCEE CREECH END

                      // JESSICA SQUIRES START
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.white))),
                          child: Row(children: <Widget>[
                            SizedBox(width: 75.0),
                            Column(children: <Widget>[
                              Text("Jessica Squires",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ]),
                          ])),
                      // JESSICA SQUIRES END

                    ])),


                ////////////
                // STATS //
                ///////////
                Table(
                  // border: TableBorder.all(color: Colors.black),
                    columnWidths: <int, TableColumnWidth> {
                      0: FixedColumnWidth(64),
                      1: FixedColumnWidth(50),
                      2: FixedColumnWidth(40),
                    },

                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow> [
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 38,
                              color: Colors.black,
                              child: Center( child: Text("PLU", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                              height: 38,
                              color: Colors.black,
                            ),

                            Container(
                                height: 38,
                                color: Colors.black,
                                child: Center(child: Text("OPPONENT", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)))
                            )
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[0], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            TableCell(
                                verticalAlignment: TableCellVerticalAlignment.top,
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center(child: Text(statName[0], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[1], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[2], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center(child: Text(statName[1], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[3], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[4], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center(child: Text(statName[2], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[5], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[6], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center(child: Text(statName[3], style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[7], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[8], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center(child: Text(statName[4], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[9], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[10], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center(child: Text(statName[5], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[11], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[12], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[6], style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[13], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[14], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[7], style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[15], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[16], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[8], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[17], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[18], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[9], style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[19], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[20], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[10], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[21], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[22], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[11], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[23], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[24], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text("Total Rebounds", style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[25], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[26], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text("Rebounding Per Game", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[27], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[28], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text("Rebounding Margin", style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[29], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      ///////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[30], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text("Total Assists", style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[31], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      ///////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[32], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text("Assists Per Game", style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[33], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      ///////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[34], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text("Total Turnovers", style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[35], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      ///////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[36], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text("Turnovers Per Game", style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[37], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),

                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[38], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[19], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[39], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      ),
                    ]
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
