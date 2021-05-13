import 'package:flutter/material.dart';
import 'msocScheduleScrap.dart';
import 'msocStatsPage.dart';

class MSOCPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<MSOCPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/msoc.jpg', fit: BoxFit.cover),
            ),

            bottom: TabBar(
              labelColor: Colors.amber,
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
                        itemCount: msocPlayers.length,
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
                                            image: msocPlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(msocPlayers[index].number + " " + msocPlayers[index].name, style: TextStyle(fontSize: 25.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(msocPlayers[index].position + " / " + msocPlayers[index].height + " / " + msocPlayers[index].year,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(msocPlayers[index].hometown + " / " + msocPlayers[index].highSchool, style: TextStyle(fontSize: 16.5, color: Colors.white), textAlign: TextAlign.center,),
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
                    color: Colors.black,
                    child: ListView(scrollDirection: Axis.vertical, children: <Widget>
                    [
                      // SARA GRIFFIN START
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
                                    "https://golutes.com/images/2018/4/24//yorke.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//yorke.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("John Yorke",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Head Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("253-334-8999",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("yorkejh@plu.edu",
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
                                "About John: The winningest coach in program history, John Yorke heads into his 19th season as head coach of Pacific Lutheran University in 2020 with an overall mark of 206-125-23. "
                                    "A six-time Northwest Conference Coach of the Year (2003, 2009, 2011, 2015, 2018, and 2019), Yorke led the 2011 Lutes to a 15-4 overall record, securing the Northwest Conference title for the first time since 1992 while qualifying for the NCAA Division III Tournament for the first time in program history.",
                                style: TextStyle(fontSize: 15.0, color: Colors.white)),

                          ])),
                      // SARA GRIFFIN END

                      // JEANKIE ACZON START
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.white))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//bloomstine.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//bloomstine.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Jamie Bloomstine",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ]),
                          ])),

                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.white))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//voiles.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//voiles.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Peter Voiles",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                  textAlign: TextAlign.center,
                              ),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white), textAlign: TextAlign.center),
                            ]),
                          ])),

                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.white))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Derek Johnson",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ]),
                          ])),

                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.white))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Jimmy Fioretti",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ]),
                          ])),

                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.white))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Willy Leiste",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ]),
                          ])),
                    ])),

                Table(
                  // border: TableBorder.all(color: Colors.white60),
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
                                  child: Center(child: Text(statName[0], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center(child: Text(statName[1], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center(child: Text(statName[2], style: TextStyle(fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[6], style: TextStyle(fontSize: 10.1,fontWeight: FontWeight.bold))),
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
                                  child: Center( child: Text(statName[7], style: TextStyle(fontWeight: FontWeight.bold))),
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
                              height: 43,
                              color: Colors.black,
                              child: Center(child: Text(stats[24], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[12], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 43,
                                )
                            ),

                            Container(
                              height: 43,
                              color: Colors.black,
                              child: Center(child: Text(stats[25], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),
                          ]
                      )
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

class MSocPlayers
{
  MSocPlayers({this.number, this.name, this.year, this.hometown, this.highSchool, this. position, this.height, this.image});
  final String number;
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String position;
  final String height;
  final NetworkImage image;
}

List<MSocPlayers> msocPlayers = <MSocPlayers>[
  MSocPlayers(number: "#1", name: "Nicholas Gaston", year: "Freshman", hometown: "Mililani, HI", highSchool: "Mililani", position: "GK", height: """ 6'1" """, image: NetworkImage('https://golutes.com/images/2020/9/15/1Gaston.jpg?width=80')),
  MSocPlayers(number: "#2", name: "Vinny D'Onorfrio", year: "Sophomore", hometown: "Mill Creek, WA", highSchool: "Henry M. Jackson", position: "D", height: """ 5'11" """, image: NetworkImage('https://golutes.com/images/2020/9/15/1DOnofrio.jpg?width=80')),
  MSocPlayers(number: "#3", name: "Alex White", year: "Sophomore", hometown: "Henderson, NV", highSchool: "Coronado", position: "D", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1White.jpg?width=80")),
  MSocPlayers(number: "#4", name: "Braden Cerbana", year: "Freshman", hometown: "Kent, WA", highSchool: "Kentridge", position: "D/M", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Cerbana.jpg?width=80")),
  MSocPlayers(number: "#5", name: "Sam Erickson", year: "Freshman", hometown: "Auburn, WA", highSchool: "Auburn Riverside", position: "M", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Erickson.jpg?width=80")),
  MSocPlayers(number: "#6", name: "Ryan Klee", year: "Junior", hometown: "Bothell, WA", highSchool: "Inglemoor", position: "D", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Klee.jpg?width=80")),
  MSocPlayers(number: "#7", name: "Ryan Griffith", year: "Junior", hometown: "Puyallup, WA", highSchool: "Sumner", position: "D", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Griffith.jpg?width=80")),
  MSocPlayers(number: "#8", name: "Keegan Dolan", year: "Junior", hometown: "Auburn, WA", highSchool: "Auburn Riverside", position: "M", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2018/8/24/Dolan_Web.jpg?width=80")),
  MSocPlayers(number: "#9", name: "Keeton Heggerness", year: "Junior", hometown: "Gig Harbor, WA", highSchool: "Peninsula", position: "F", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Heggerness.jpg?width=80")),
  MSocPlayers(number: "#10", name: "Rainier Schlekewey", year: "Senior", hometown: "Seattle, WA", highSchool: "Garfield", position: "M", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Schlekewey.jpg?width=80")),
  MSocPlayers(number: "#11", name: "Joe Camp", year: "Junior", hometown: "Sammamish, WA", highSchool: "Skyline", position: "M/F", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Camp.jpg?width=80")),
  MSocPlayers(number: "#12", name: "Dane Helle", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "M", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2019/8/21/219A5363.JPG?width=80")),
  MSocPlayers(number: "#13", name: "Sam Ebner", year: "Senior", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "D", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Ebner.jpg?width=80")),
  MSocPlayers(number: "#14", name: "Jon Tolo", year: "Sophomore", hometown: "Jessheim, NO", highSchool: "Jessheim", position: "M", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Tolo.jpg?width=80")),
  MSocPlayers(number: "#15", name: "Hayden Bentzel", year: "Sophomore", hometown: "Billings, MT", highSchool: "Billings West", position: "M", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Bentzel.jpg?width=80")),
  MSocPlayers(number: "#16", name: "Jared Davies", year: "Sophomore", hometown: "Snoqualmie, WA", highSchool: "Mount Si", position: "M", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Davies.jpg?width=80")),
  MSocPlayers(number: "#17", name: "Craig Johnson", year: "Freshman", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "M", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Johnson.jpg?width=80")),
  MSocPlayers(number: "#18", name: "Archie Caldwell", year: "Junior", hometown: "University Place, WA", highSchool: "Curtis", position: "F", height: """ 6'4" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Caldwell.jpg?width=80")),
  MSocPlayers(number: "#20", name: "Brandt Kelly", year: "Freshman", hometown: "Port Orchard, WA", highSchool: "Life Christian Academy", position: "F", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Kelly.jpg?width=80")),
  MSocPlayers(number: "#21", name: "Sammy Tafolla", year: "Freshman", hometown: "Fife, WA", highSchool: "Rogers", position: "M", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Tafolla.jpg?width=80")),
  MSocPlayers(number: "#22", name: "Eli Visser", year: "Freshman", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "D/M", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/9/15/Visser.jpg?width=80")),
  MSocPlayers(number: "#23", name: "Cole Dobson", year: "Freshman", hometown: "Spokane, WA", highSchool: "University", position: "D", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Dobson.jpg?width=80")),
  MSocPlayers(number: "#24", name: "Isaiah Baer", year: "Freshman", hometown: "Everett, WA", highSchool: "Everett", position: "M", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Baer.jpg?width=80")),
  MSocPlayers(number: "#25", name: "Ayden Lawes", year: "Freshman", hometown: "Mililani, HI", highSchool: "Mililani", position: "F", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Lawes.jpg?width=80")),
  MSocPlayers(number: "#26", name: "Pablo Alvarado", year: "Freshman", hometown: "Vancouver, WA", highSchool: "Fort Vancouver", position: "D", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Alvardo.jpg?width=80")),
  MSocPlayers(number: "#27", name: "Elijah Thompson", year: "Freshman", hometown: "Vancouver, WA", highSchool: "Mountain View", position: "M/F", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Thompson.jpg?width=80")),
  MSocPlayers(number: "#28", name: "Kane Scherer", year: "Sophomore", hometown: "Moab, UT", highSchool: "Grand Country", position: "M/F", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2019/8/21/219A5368.JPG?width=80")),
  MSocPlayers(number: "#29", name: "Aidan Hopson", year: "Freshman", hometown: "Juneau, AK", highSchool: "Juneau-Douglas", position: "M", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Hopson.jpg?width=80")),
  MSocPlayers(number: "#30", name: "Jared Simarago", year: "Junior", hometown: "Los Alamitos, CA", highSchool: "Los Alamitos", position: "D", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Simarago.jpg?width=80")),
  MSocPlayers(number: "#32", name: "Peter Larsen", year: "Freshman", hometown: "Haugesund, NO", highSchool: "Skeisvang VGS", position: "M/F", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Larsen.jpg?width=80")),
  MSocPlayers(number: "#33", name: "Lucas Hempen", year: "Freshman", hometown: "Louisville, CO", highSchool: "Fairview", position: "GK", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Hempen.jpg?width=80")),
  MSocPlayers(number: "#35", name: "Cole Stewart", year: "Freshman", hometown: "Spokane Valley, WA", highSchool: "University", position: "M", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Cole.jpg?width=80")),
  MSocPlayers(number: "#42", name: "Robby Guyer", year: "Sophomore", hometown: "Ravensdale, WA", highSchool: "Tahoma", position: "F", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Guyer.jpg?width=80")),
  MSocPlayers(number: "#50", name: "Gabriel Arcas", year: "Freshman", hometown: "Kula, HI", highSchool: "Kamehameha", position: "GK", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/9/15/1Arcas.jpg?width=80")),
  MSocPlayers(number: "#99", name: "Hanzel Chicas", year: "Freshman", hometown: "Lakewood, WA", highSchool: "Harrison Prep", position: "D/M", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/9/15/Chicas.jpg?width=80")),

];
