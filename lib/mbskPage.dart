import 'package:flutter/material.dart';
import 'mbskScheduleScrap.dart';
import 'mbskStatsScrap.dart';

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
                                    "https://golutes.com/images/2018/4/24//murray.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//murray.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Chad Murray",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Head Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("253-535-8452",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("murraycg@plu.edu",
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
                                "About Chad: Chad Murray joined the Pacific Lutheran University staff in April of 2017 as the head men's basketball coach."
                                "Under Chad's leadership, I look forward to seeing men's basketball continue to be a top tier program in the Northwest Conference, said Athletic Director Laurie Turner."
                                "With Chad's breadth of experience serving as both an assistant and head coach at Division III programs, as well as his West Coast ties, will allow him to hit the ground running.",
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
                                    "https://golutes.com/images/2020/10/12/schilter.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2020/10/12/schilter.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Alex Schilter",
                                style: TextStyle(
                                    fontSize: 32.0,
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
                                  child: Center(child: Text(statName[3], style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
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
                                  child: Center( child: Text(statName[6], style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
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
                                  child: Center( child: Text(statName[9], style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
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

                      //////////
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

                      //////////
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

                      //////////
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

                      //////////
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

                      //////////
                      // STAT //
                      //////////
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

                      //////////
                      // STAT //
                      //////////
                      TableRow(
                          children: <Widget> [
                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[40], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[20], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[41], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
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
                              child: Center(child: Text(stats[42], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[21], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[43], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
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
                              child: Center(child: Text(stats[44], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[22], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[45], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
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
                              child: Center(child: Text(stats[46], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[23], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[47], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
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
                              child: Center(child: Text(stats[48], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[24], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[49], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
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
                              child: Center(child: Text(stats[50], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[25], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[51], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
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
                              child: Center(child: Text(stats[52], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ),

                            Container(
                                child: Container(
                                  color: Colors.amberAccent,
                                  child: Center( child: Text(statName[26], style: TextStyle(fontWeight: FontWeight.bold))),
                                  height: 40,
                                )
                            ),

                            Container(
                              height: 40,
                              color: Colors.black,
                              child: Center(child: Text(stats[53], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
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


