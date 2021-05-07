import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

////////////////////
// WSOC SCHEDULE //
///////////////////
import 'webscrap1.dart';

/////////////////
// WSOC STATS //
////////////////
import 'wsocStatsScrap.dart';

//////////////////////
// FOR ROSTER PAGE //
/////////////////////
class WSOCPlayers {
  WSOCPlayers(
      {this.number,
      this.name,
      this.year,
      this.hometown,
      this.highSchool,
      this.position,
      this.height,
      this.image});
  final String number;
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String position;
  final String height;
  final NetworkImage image;
}

List<WSOCPlayers> wsocPlayers = <WSOCPlayers>[
  WSOCPlayers(
      number: "#0",
      name: "Cassidy Crosswhite",
      year: "Senior",
      hometown: "Spokane, WA",
      highSchool: "Freeman",
      position: "GK",
      height: """ 5'6" """,
      image: NetworkImage(
          'https://golutes.com/images/2020/9/10/Crosswhite.JPG?width=300')),
  WSOCPlayers(
      number: "#1",
      name: "Kate Millett",
      year: "Sophomore",
      hometown: "Snohomish, WA",
      highSchool: "Glacier Peak",
      position: "GK",
      height: """ 5'2" """,
      image: NetworkImage(
          'https://golutes.com/images/2020/9/10/Millett.JPG?width=300')),
  WSOCPlayers(
      number: "#2",
      name: "Jami Hughes",
      year: "Sophomore",
      hometown: "Tacoma, WA",
      highSchool: "Stadium",
      position: "M",
      height: """ 5'6" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Hughes.JPG?width=300")),
  WSOCPlayers(
      number: "#3",
      name: "Grayson Nottage",
      year: "Sophomore",
      hometown: "Puyallup, WA",
      highSchool: "Puyallup",
      position: "D",
      height: """ 5'4" """,
      image: NetworkImage(
          "https://golutes.com/images/2019/8/23/IMG_0783.JPG?width=300")),
  WSOCPlayers(
      number: "#4",
      name: "Kelly Brown",
      year: "Senior",
      hometown: "Kennewick, WA",
      highSchool: "Southridge",
      position: "M",
      height: """ 5'4" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Brown_K.JPG?width=300")),
  WSOCPlayers(
      number: "#5",
      name: "Kari Mills",
      year: "Senior",
      hometown: "San Diego, CA",
      highSchool: "Torrey Pines",
      position: "M",
      height: """ 5'8" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Mills.JPG?width=300")),
  WSOCPlayers(
      number: "#6",
      name: "Maddie Landreth",
      year: "Senior",
      hometown: "Federal Way, WA",
      highSchool: "Todd Beamer",
      position: "M",
      height: """ 5'5" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Landreth.JPG?width=300")),
  WSOCPlayers(
      number: "#7",
      name: "Sydney Larson",
      year: "Senior",
      hometown: "University Place, WA",
      highSchool: "Curtis",
      position: "M",
      height: """ 5'7" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Larson.JPG?width=300")),
  WSOCPlayers(
      number: "#8",
      name: "Emma Hunter",
      year: "Senior",
      hometown: "Portland, OR",
      highSchool: "Lake Oswego",
      position: "D",
      height: """ 5'9" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Hunter.JPG?width=300")),
  WSOCPlayers(
      number: "#9",
      name: "Vivian Shinall",
      year: "Junior",
      hometown: "Minneapolis, MN",
      highSchool: "Benilde-Saint",
      position: "F",
      height: """ 5'4" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Shinall.JPG?width=300")),
  WSOCPlayers(
      number: "#10",
      name: "Marina Foster",
      year: "Freshman",
      hometown: "Salem, OR",
      highSchool: "South Salem",
      position: "M",
      height: """ 5'6" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Foster.JPG?width=300")),
  WSOCPlayers(
      number: "#11",
      name: "Tasha Tennyson",
      year: "Senior",
      hometown: "Seattle, WA",
      highSchool: "Ballard",
      position: "F",
      height: """ 5'5" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Tennyson.JPG?width=300")),
  WSOCPlayers(
      number: "#12",
      name: "Kimber Thomas",
      year: "Junior",
      hometown: "Snohomish, WA",
      highSchool: "Glacier Peak",
      position: "M",
      height: """ 5'10" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Thomas.JPG?width=300")),
  WSOCPlayers(
      number: "#13",
      name: "Emily Sugimoto",
      year: "Senior",
      hometown: "Renton, WA",
      highSchool: "Kentridge",
      position: "M",
      height: """ 5'1" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Sugimoto.JPG?width=300")),
  WSOCPlayers(
      number: "#14",
      name: "Ellie Johnson",
      year: "Senior",
      hometown: "La Center, WA",
      highSchool: "La Center",
      position: "M",
      height: """ 5'7" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Johnson.JPG?width=300")),
  WSOCPlayers(
      number: "#15",
      name: "Haley Bolen",
      year: "Freshman",
      hometown: "Lake Tapps, WA",
      highSchool: "Sumner",
      position: "M",
      height: """ 5'8" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Bolen.JPG?width=300")),
  WSOCPlayers(
      number: "#16",
      name: "Ashlee Gormley",
      year: "Sophomore",
      hometown: "Renton, WA",
      highSchool: "Kentridge",
      position: "D",
      height: """ 5'4" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Gormley.JPG?width=300")),
  WSOCPlayers(
      number: "#17",
      name: "Hannah Smith",
      year: "Senior",
      hometown: "Chandler, AZ",
      highSchool: "Basha",
      position: "M",
      height: """ 5'5" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Smith.JPG?width=300")),
  WSOCPlayers(
      number: "#18",
      name: "Kiyomi Okamoto",
      year: "Junior",
      hometown: "Bedford, NH",
      highSchool: "Bedford",
      position: "M",
      height: """ 5'3" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Okamoto.JPG?width=300")),
  WSOCPlayers(
      number: "#19",
      name: "Bri Cross",
      year: "Junior",
      hometown: "Puyallup, WA",
      highSchool: "Rogers",
      position: "D",
      height: """ 5'3" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Cross.JPG?width=300")),
  WSOCPlayers(
      number: "#20",
      name: "Alyssa Jordan",
      year: "Junior",
      hometown: "Snohomish, WA",
      highSchool: "Glacier Peak",
      position: "M",
      height: """ 5'3" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Jordan.JPG?width=300")),
  WSOCPlayers(
      number: "#21",
      name: "Keila Kruse",
      year: "Sophomore",
      hometown: "Olympia, WA",
      highSchool: "Olympia",
      position: "D",
      height: """ 5'7" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Kruse.JPG?width=300")),
  WSOCPlayers(
      number: "#22",
      name: "Meghan Michels",
      year: "Sophomore",
      hometown: "Medford, OR",
      highSchool: "St. Marys",
      position: "F",
      height: """ 5'5" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Michels.JPG?width=300")),
  WSOCPlayers(
      number: "#23",
      name: "Sophia Jeter",
      year: "Freshman",
      hometown: "Olalla, WA",
      highSchool: "Annie Wright",
      position: "M",
      height: """ 5'3" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Jeter.JPG?width=300")),
  WSOCPlayers(
      number: "#24",
      name: "Calie Rose",
      year: "Junior",
      hometown: "Snoqualmie, WA",
      highSchool: "Mount Si",
      position: "GK",
      height: """ 5'7" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Rose.JPG?width=300")),
  WSOCPlayers(
      number: "#25",
      name: "Savannah Brown",
      year: "Senior",
      hometown: "Kennewick, WA",
      highSchool: "Southridge",
      position: "M",
      height: """ 5'5" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Brown_S.JPG?width=300")),
  WSOCPlayers(
      number: "#26",
      name: "Vera Panescu",
      year: "Sophmore",
      hometown: "Seattle, WA",
      highSchool: "Garfield",
      position: "F",
      height: """ 5'5" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Panescu_Reich.JPG?width=300")),
  WSOCPlayers(
      number: "#27",
      name: "Lily Dose",
      year: "Freshman",
      hometown: "Shelton, WA",
      highSchool: "Shelton",
      position: "D/M",
      height: """ 5'5" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Dose.JPG?width=300")),
  WSOCPlayers(
      number: "#28",
      name: "Ellie Reardon",
      year: "Sophomore",
      hometown: "University Place, WA",
      highSchool: "Curtis",
      position: "D",
      height: """ 5'4" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Reardon.JPG?width=300")),
  WSOCPlayers(
      number: "#29",
      name: "Shaylin Cesar",
      year: "Sophomore",
      hometown: "Juneau, AL",
      highSchool: "Juneau-Douglas",
      position: "GK",
      height: """ 5'6" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/219A7631.JPG?width=300")),
  WSOCPlayers(
      number: "#30",
      name: "Ashton Huppert",
      year: "Senior",
      hometown: "Chandler, AZ",
      highSchool: "Hamilton",
      position: "GK",
      height: """ 5'6" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Huppert.JPG?width=300")),
  WSOCPlayers(
      number: "#31",
      name: "Chloe Benson",
      year: "Sophomore",
      hometown: "Happy Valley, OR",
      highSchool: "Clackamas",
      position: "D",
      height: """ 5'3" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Benson.JPG?width=300")),
  WSOCPlayers(
      number: "#32",
      name: "Alyssa Leong",
      year: "Freshman",
      hometown: "Honolulu, HI",
      highSchool: "Kaiser",
      position: "M/F",
      height: """ 5'1" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Leong.JPG?width=300")),
  WSOCPlayers(
      number: "#33",
      name: "Kaylie Brown",
      year: "Freshman",
      hometown: "West Linn, OR",
      highSchool: "West Linn",
      position: "D",
      height: """ 5'4" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Brown_Kaylie.JPG?width=300")),
  WSOCPlayers(
      number: "#34",
      name: "Riley Shaver",
      year: "Freshman",
      hometown: "Hillsboro, OR",
      highSchool: "Glencoe",
      position: "D",
      height: """ 5'7" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Shaver.JPG?width=300")),
  WSOCPlayers(
      number: "#35",
      name: "Cecilia Coca",
      year: "Freshman",
      hometown: "Clackamas, OR",
      highSchool: "Clackamas",
      position: "M/F",
      height: """ 5'3" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Coca_Aitken.JPG?width=300")),
  WSOCPlayers(
      number: "#36",
      name: "Joelle Buck",
      year: "Freshman",
      hometown: "Snoqualmie, WA",
      highSchool: "Mount Si",
      position: "D",
      height: """ 5'11" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Buck.JPG?width=300")),
  WSOCPlayers(
      number: "#37",
      name: "Ella Merte",
      year: "Freshman",
      hometown: "Auburn, WA",
      highSchool: "Auburn Mountainview",
      position: "D",
      height: """ 5'5" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Merte.JPG?width=300")),
  WSOCPlayers(
      number: "#38",
      name: "Sawyer Anderson",
      year: "Freshman",
      hometown: "Enumclaw, WA",
      highSchool: "Enumclaw",
      position: "M",
      height: """ 5'7" """,
      image: NetworkImage(
          "https://golutes.com/images/2020/9/10/Anderson_S.JPG?width=300")),
];

class WSOCPage extends StatefulWidget {
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<WSOCPage>
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
            //  title: Text("BASEBALL"),
            // title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
            pinned: true,
            backgroundColor: Colors.grey,

            //snap: true,
            //floating: true,
            expandedHeight: 175.0,

            ////////////////////////////
            // CUSTOM PICTURE HEADER //
            ///////////////////////////
            flexibleSpace: FlexibleSpaceBar(
              //collapseMode: CollapseMode.pin,
              centerTitle: true,
              //   title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
              background: Image.asset('images/wsoc.jpg', fit: BoxFit.cover),
            ),

            ///////////
            // TABS //
            //////////
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
                        alignment: Alignment.center, child: Text("SCHEDULE", style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center, child: Text("ROSTER", style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center, child: Text("COACHES", style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("STATISTICS", style: TextStyle(fontWeight: FontWeight.bold)))),

              ],
              controller: controller,
            ),
          ),

          ////////////////
          // TAB PAGES //
          ///////////////
          SliverFillRemaining(
            child: TabBarView(
              //controller: controller ,
              controller: controller,
              children: <Widget>[
                //Center(child: Text(gameInfo.toString())),
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
                // Center(child: Text("TAB ONE")),

                /////////////
                // ROSTER //
                ////////////
                Container(
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: wsocPlayers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey, width: 2.0)),
                              ),
                              child: Row(children: <Widget>[
                                Container(
                                  height: 120.0,
                                  width: 100.0,
                                  margin: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: wsocPlayers[index].image,
                                  )),
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Center(
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                      Text(
                                        wsocPlayers[index].number +
                                            " " +
                                            wsocPlayers[index].name,
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                          wsocPlayers[index].position +
                                              " / " +
                                              wsocPlayers[index].height +
                                              " / " +
                                              wsocPlayers[index].year,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.center),
                                      Text(
                                        wsocPlayers[index].hometown +
                                            " / " +
                                            wsocPlayers[index].highSchool,
                                        style: TextStyle(
                                            fontSize: 15.7,
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                      // Text(players[index].hometown + " / " + players[index].highSchool),
                                    ])),
                              ]));
                        })),

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
                                    "https://golutes.com/images/2018/4/24//spidahl.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//spidahl.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Seth Spidahl",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                              Text("Head Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                              Text("253-376-7687",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                              Text("spidahsj@plu.edu",
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
                                "About Seth: Current technical director for the locally based soccer club WPFC. Was named Head Coach for the Lutes back in 2015. Has lead the program to a 40-2-6 record in 6 years.",
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
                                    "https://golutes.com/images/2020/9/24/Ford_71.JPG?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2020/9/24/Ford_71.JPG?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Scott Ford",
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
                                    "https://golutes.com/images/2020/9/30/Green.JPG?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2020/9/30/Green.JPG?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Kate Green",
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
                                    "https://golutes.com/images/2020/9/30/Salveson.JPG?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2020/9/30/Salveson.JPG?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Nate Salveson",
                                style: TextStyle(
                                    fontSize: 27,
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

                ////////////
                // STATS //
                ///////////
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
