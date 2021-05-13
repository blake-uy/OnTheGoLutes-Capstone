import 'package:flutter/material.dart';
import 'volleyballScheduleScrap.dart';
import 'vbStatsScrap.dart';

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

                /////////////
                // COACHES //
                /////////////
                Container(
                  //height: 800.0,
                    color: Colors.white,
                    child: ListView(scrollDirection: Axis.vertical, children: <Widget>
                    [
                      // KEVIN AOKI START
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            // color: Colors.grey[400],
                              color: Colors.white,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.transparent))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2020/9/28/Aoki.JPG?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2020/9/28/Aoki.JPG?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Kevin Aoki",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("Head Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("253-536-1900",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("aokika@plu.edu",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ]),
                          ])),
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            //color: Colors.grey[400],
                              border: Border(
                                  bottom: BorderSide(color: Colors.black, width: 2.0))),
                          child: Column(children: <Widget>[
                            Text(
                                "About Kevin: Throughout his 24 years as Head Coach for the Lutes, he has led the team to 11 Northwest Conference Championships and posted a 432-192 record. Aoki has been named NWC Coach of the Year 10 times and the AVCA West Region Coach of the Year three.",
                                style: TextStyle(fontSize: 15.0, color: Colors.black)),
                          ])),
                      // KEVIN AOKI END

                      // RUSTY CARLSON START
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.black, width: 2.0))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2020/9/28/Carlson.JPG?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2020/9/28/Carlson.JPG?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Rusty Carlson",
                                style: TextStyle(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ]),
                          ])),
                      // RUTSY CARLSON END

                      // KYLAI COOLEY START
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.black, width: 2.0))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2020/9/28/Cooley.JPG?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2020/9/28/Cooley.JPG?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Kylai Cooley",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ]),
                          ])),
                      // KYLAI COOLEY END

                      // LINA RANDALL START
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.black, width: 2.0))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2020/9/28/Randall.JPG?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2020/9/28/Randall.JPG?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Lina Randall",
                                style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ]),
                          ])),
                    ])),
                // LINA RANDALL END

                ///////////
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
                                  child: Center(child: Text(statName[3], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[6], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[9], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[12], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[13], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[14], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[15], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[16], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[17], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[18], style: TextStyle(fontWeight: FontWeight.bold))),
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