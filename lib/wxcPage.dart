import 'package:flutter/material.dart';
import 'wxcScheduleScrap.dart';

class WXCPlayers
{
  WXCPlayers({this.name, this.year, this.hometown, this.highSchool, this.image});
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final NetworkImage image;
}

List<WXCPlayers> wxcplayers = <WXCPlayers>[
  WXCPlayers(name: "Josie Austin", year: "Freshman", hometown: "Auburn, WA", highSchool: "Auburn Mountainview HS", image: NetworkImage('https://golutes.com/images/2020/9/30/Austin.JPG?width=300')),
  WXCPlayers(name: "Carly Dailey", year: "Junior", hometown: "Honolulu, HI", highSchool: "Moanalua HS", image: NetworkImage("https://golutes.com/images/2019/8/28/Dailey.jpg?width=300")),
  WXCPlayers(name: "Sulin Degollado", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Rogers HS", image: NetworkImage("https://golutes.com/images/2019/8/28/Degollado.jpg?width=300")),
  WXCPlayers(name: "Anna Iverson", year: "Freshman", hometown: "Juneau, AL", highSchool: "Juneau-Douglas HS", image: NetworkImage("https://golutes.com/images/2020/9/30/Iverson_A.jpg?width=300")),
  WXCPlayers(name: "Brittany Iverson", year: "Senior", hometown: "Puyallup, WA", highSchool: "Emerald Ridge HS", image: NetworkImage("https://golutes.com/images/2020/9/30/Iverson_B.jpg?width=3000")),
  WXCPlayers(name: "Alicia Krivanek", year: "Junior", hometown: "Redmond, WA", highSchool: "Cedarcrest HS", image: NetworkImage("https://golutes.com/images/2020/9/30/Krivanek.JPG?width=300")),
  WXCPlayers(name: "Sarah Paquet", year: "Junior", hometown: "Olympia, WA", highSchool: "Olympia Regional Academy", image: NetworkImage("https://golutes.com/images/2020/9/30/Paquet.JPG?width=300")),
  WXCPlayers(name: "Joan Park", year: "Junior", hometown: "Mountlake Terrace, WA", highSchool: "Mountlake Terrace HS", image: NetworkImage("https://golutes.com/images/2020/9/30/Park.JPG?width=300")),
];

class WXCPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<WXCPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/xc.jpg', fit: BoxFit.cover),
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
                          //  color: Colors.black,
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
                                  color: Colors.black, fontSize: 19.5),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              months[index] + " " + dayNumOnly[index] + "  @ " + timeOnly[index] + timeLabels[index],
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black,)
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
                        itemCount: wxcplayers.length,
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
                                            image: wxcplayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Center(child:
                                          Text(wxcplayers[index].name, style: TextStyle(fontSize: 25.0,), textAlign: TextAlign.center,)),
                                          Text(wxcplayers[index].year + " / " + wxcplayers[index].hometown,
                                              style: TextStyle(fontSize: 17.0, ), textAlign: TextAlign.center),
                                          Text(wxcplayers[index].highSchool, style: TextStyle(fontSize: 16.0,), textAlign: TextAlign.center,),
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
                    color: Colors.white,
                    child: ListView(scrollDirection: Axis.vertical, children: <Widget>
                    [
                      // ADAM FRYE START
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
                                    "https://golutes.com/images/2018/4/24//adamfrye.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//adamfrye.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Adam Frye",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("Head Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("253-535-7371",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("fryeac@plu.edu",
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
                                "About Adam: A USATF level one certified coach who was named Head Coach for the Lutes back in 2016. Has lead the program to various NWC titles, as well as a fifth place finish at the NCAA West Regional in 2018.",
                                style: TextStyle(fontSize: 15.0, color: Colors.black)),
                          ])),
                      // ADAM FRYE END

                      // JACOB WAHLENMAIER START
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
                                    "https://golutes.com/images/2019/12/6/Coach_Wahlenmaier.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2019/12/6/Coach_Wahlenmaier.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Jacob Wahlenmaier",
                                style: TextStyle(
                                    fontSize: 20.5,
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
                      // JACOB WAHLENMAIER END

                      // MATTHEW BEAL START
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
                                    "https://golutes.com/images/2019/12/6/Beal_Crop.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2019/12/6/Beal_Crop.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Matthew Beal",
                                style: TextStyle(
                                    fontSize: 28,
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
                      // MATTHEW BEAL END

                      // ANNA RESTEMAYER START
                      Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom:
                                  BorderSide(color: Colors.white))),
                          child: Row(children: <Widget>[
                            FadeInImage(
                                placeholder: NetworkImage(
                                    "https://golutes.com/images/2020/10/21/Restemayer.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2020/10/21/Restemayer.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 30.0),
                            Column(children: <Widget>[
                              Text("Anna Restemayer",
                                style: TextStyle(
                                    fontSize: 21.5,
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
                // ANNA RESTEMAYER END

                Center(child: Text("TAB FOUR")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}