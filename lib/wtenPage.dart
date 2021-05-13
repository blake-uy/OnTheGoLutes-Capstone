import 'package:flutter/material.dart';
import 'wtenScheduleScrap.dart';

class WTennisPlayers
{
  WTennisPlayers({this.name, this.year, this.hometown, this.highSchool, this.image});
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final NetworkImage image;
}

List<WTennisPlayers> wtennisplayers =  <WTennisPlayers>[
  WTennisPlayers(name: "Meggie Burnett", year: "Freshman", hometown: "Puyallup, WA", highSchool: "Puyallup HS", image: NetworkImage('https://golutes.com/images/2021/2/9/Burnett.JPG?width=80')),
  WTennisPlayers(name: "Sydney Cameron", year: "Sophomore", hometown: "Chehalis, WA", highSchool: "W.F. West HS", image: NetworkImage("https://golutes.com/images/2021/2/9/Cameron.JPG?width=80")),
  WTennisPlayers(name: "Jillian Chong", year: "Freshman", hometown: "Federal Way, WA", highSchool: "Federal Way HS", image: NetworkImage("https://golutes.com/images/2021/2/9/Chong.JPG?width=80")),
  WTennisPlayers(name: "Bayley Gochanour", year: "Senior", hometown: "Whidbey Island, WA", highSchool: "South Whidbey HS", image: NetworkImage("https://golutes.com/images/2021/2/9/Gochanour_Bayley.jpg?width=80")),
  WTennisPlayers(name: "Hannah Jeffries", year: "Senior", hometown: "Chehalis, WA", highSchool: "Centralia HS", image: NetworkImage("https://golutes.com/images/2021/2/9/Jeffries.jpg?width=80")),
  WTennisPlayers(name: "Taylor Stokes", year: "Senior", hometown: "Auburn, WA", highSchool: "Kennedy Catholic HS", image: NetworkImage("https://golutes.com/images/2021/2/9/Stokes.jpg?width=80")),
];

class WTenPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<WTenPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/wten.jpg', fit: BoxFit.cover),
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
                Container(
                  // color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: wtennisplayers.length,
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
                                            image: wtennisplayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Center(child:
                                          Text(wtennisplayers[index].name, style: TextStyle(fontSize: 23.0,), textAlign: TextAlign.center,)),
                                          Text(wtennisplayers[index].year + " / " + wtennisplayers[index].hometown,
                                              style: TextStyle(fontSize: 17.0, ), textAlign: TextAlign.center),
                                          Text(wtennisplayers[index].highSchool, style: TextStyle(fontSize: 16.0,), textAlign: TextAlign.center,),
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
                ////////////
                Container(
                  //height: 800.0,
                    color: Colors.white,
                    child: ListView(scrollDirection: Axis.vertical, children: <Widget>
                    [
                      // CHERI CAMPBELL START
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
                                    "https://golutes.com/images/2018/9/18/Campbell_C.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/9/18/Campbell_C.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Cheri Campbell",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("Head Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("360-791-5210",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("campbecm@plu.edu",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ]),
                          ])),
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            //color: Colors.grey[400],
                              border: Border(
                                  bottom: BorderSide(color: Colors.transparent))),
                          child: Column(children: <Widget>[
                            Text(
                                "About Cheri: Before being appointed as Head Coach for the Lutes back in 2018, she served as head coach at North Thurston High School. During her time there, the Rams had state qualifiers in six of her eight years.",
                                style: TextStyle(fontSize: 15.0, color: Colors.black)),
                          ])),
                      // CHERI CAMPBELL END
                    ])),
                Center(child: Text("TAB FOUR")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}