import 'package:flutter/material.dart';

class MTenPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<MTenPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/mten.jpg', fit: BoxFit.cover),
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

                            child:Column(children: <Widget>[
                              Text("Coming soon")
                            ],)

                        );
                      },
                    ),)
                ]),

                Container(
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: mtenPlayers.length,
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
                                            image: mtenPlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(mtenPlayers[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(mtenPlayers[index].year,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(mtenPlayers[index].hometown + " / " + mtenPlayers[index].highSchool, style: TextStyle(fontSize: 16.5, color: Colors.white), textAlign: TextAlign.center,),
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
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: mtenCoaches.length,
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
                                            image: mtenCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(mtenCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(mtenCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),

                                        ]
                                    )
                                    ),
                                  ]
                              )
                          );
                        }
                    )
                ),
                Center(child: Text("TAB FOUR")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MTenPlayers
{
  MTenPlayers({this.name, this.year, this.hometown, this.highSchool, this.image});
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final NetworkImage image;
}

List<MTenPlayers> mtenPlayers = <MTenPlayers>[
  MTenPlayers(name: "Michael Campbell", year: "Junior", hometown: "Lacey, WA", highSchool: "North Thurston", image: NetworkImage('https://golutes.com/images/2021/2/9/Campbell.jpg?width=80')),
  MTenPlayers(name: "Jake Kim", year: "Senior", hometown: "Federal Way, WA", highSchool: "Todd Beamer", image: NetworkImage('https://golutes.com/images/2021/2/9/Kim.jpg?width=80')),
  MTenPlayers(name: "Samuel Kwon", year: "Senior", hometown: "University Place, WA", highSchool: "Curtis", image: NetworkImage("https://golutes.com/images/2021/2/9/Kwon.jpg?width=80")),
  MTenPlayers(name: "Marcus Lee", year: "Junio", hometown: "Renton, WA", highSchool: "Hazen", image: NetworkImage("https://golutes.com/images/2020/12/22/cropLee.jpg?width=80")),
  MTenPlayers(name: "Branson Near", year: "Senior", hometown: "Puyallup, WA", highSchool: "Puyallup", image: NetworkImage("https://golutes.com/images/2021/2/9/Near.jpg?width=80")),
  MTenPlayers(name: "Alex Richter", year: "Senior", hometown: "Olympia, WA", highSchool: "Olympia", image: NetworkImage("https://golutes.com/images/2021/2/9/Richter.jpg?width=80")),
  MTenPlayers(name: "Derek Stone", year: "Junior", hometown: "Anchorage, AK", highSchool: "Dimond", image: NetworkImage("https://golutes.com/images/2018/8/24/Stone_web.jpg?width=80")),
  MTenPlayers(name: "Lars Wangen", year: "Sophomore", hometown: "Oslo, NO", highSchool: "Oslo", image: NetworkImage("https://golutes.com/images/2019/11/8/Lars_Wangen.jpg?width=80")),

];

class MTenCoaches
{
  MTenCoaches({this.name, this.title, this.image});
  final String name;
  final String title;
  final NetworkImage image;
}

List<MTenCoaches> mtenCoaches = <MTenCoaches>[
  MTenCoaches(name: "Paul Koessler", title: "Head Coach", image: NetworkImage('https://golutes.com/images/2021/2/1/Koessler_Headshot.jpg?width=80')),
  MTenCoaches(name: "Kent Van Alstyne", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=80')),
  MTenCoaches(name: "Craig Hamilton", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//hamilton.jpg?width=80')),
];
