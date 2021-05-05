import 'package:flutter/material.dart';

class MXCPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<MXCPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/mxc.jfif', fit: BoxFit.cover),
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
                        itemCount: xcPlayers.length,
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
                                            image: xcPlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(xcPlayers[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(xcPlayers[index].year,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(xcPlayers[index].hometown + " / " + xcPlayers[index].highSchool, style: TextStyle(fontSize: 16.5, color: Colors.white), textAlign: TextAlign.center,),
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
                        itemCount: xcCoaches.length,
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
                                            image: xcCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(xcCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(xcCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),

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

class XcPlayers
{
  XcPlayers({this.name, this.year, this.hometown, this.highSchool, this.image});
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final NetworkImage image;
}

List<XcPlayers> xcPlayers = <XcPlayers>[
  XcPlayers(name: "Erick Arcos", year: "Junior", hometown: "Graham, WA", highSchool: "Graham-Kapowsin", image: NetworkImage('https://golutes.com/images/2020/9/30/Arcos.JPG?width=80')),
  XcPlayers(name: "Nico Bourgeois", year: "Senior", hometown: "Sumner, WA", highSchool: "Sumner", image: NetworkImage('https://golutes.com/images/2020/9/30/Bourgeois.JPG?width=80')),
  XcPlayers(name: "Hezekiah Goodwin", year: "Senior", hometown: "Sacramento, CA", highSchool: "Kentlake", image: NetworkImage("https://golutes.com/images/2020/9/30/Goodwin.JPG?width=80")),
  XcPlayers(name: "Riley Hutchins", year: "Freshman", hometown: "Snohomish, WA", highSchool: "Snohomish", image: NetworkImage("https://golutes.com/images/2020/9/30/Hutchins.JPG?width=80")),
  XcPlayers(name: "Bryce Johnson", year: "Senior", hometown: "Bellingham, WA", highSchool: "Sehome", image: NetworkImage("https://golutes.com/images/2020/9/30/johnson.jpg?width=80")),
  XcPlayers(name: "Jonah Maier", year: "Sophomore", hometown: "Seattle, WA", highSchool: "Ballard", image: NetworkImage("https://golutes.com/images/2020/9/30/Jonah_Maier.jpg?width=80")),
  XcPlayers(name: "Johnny Maier", year: "Senior", hometown: "Seattle, WA", highSchool: "Ballard", image: NetworkImage("https://golutes.com/images/2020/9/30/Johnny_Maier.jpg?width=80")),
  XcPlayers(name: "Phillip Philbrick", year: "Freshman", hometown: "Federal Way, WA", highSchool: "Todd", image: NetworkImage("https://golutes.com/images/2021/2/9/Philbrick.JPG?width=80")),
  XcPlayers(name: "Trey Robak", year: "Junior", hometown: "Santee, CA", highSchool: "Grossmont", image: NetworkImage("https://golutes.com/images/2020/9/30/Robak.JPG?width=80")),
  XcPlayers(name: "Daniel Samson", year: "Junior", hometown: "Olympia, WA", highSchool: "Capital", image: NetworkImage("https://golutes.com/images/2019/8/28/Samson.jpg?width=80")),
  XcPlayers(name: "Ryan Stracke", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Rogers", image: NetworkImage("https://golutes.com/images/2020/9/30/Stracke.JPG?width=80")),
  XcPlayers(name: "Ethan Tucey", year: "Sophomore", hometown: "Lake Stevens, WA", highSchool: "Lake Stevens", image: NetworkImage("https://golutes.com/images/2020/9/30/Tucey.JPG?width=80")),
  XcPlayers(name: "Riley Wynn", year: "Senior", hometown: "Gig Harbor, WA", highSchool: "Peninsula", image: NetworkImage("https://golutes.com/images/2020/9/30/Wynn.JPG?width=80")),

];

class XcCoaches
{
  XcCoaches({this.name, this.title, this.image});
  final String name;
  final String title;
  final NetworkImage image;
}

List<XcCoaches> xcCoaches = <XcCoaches>[
  XcCoaches(name: "Adam Frye", title: "Head Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//adamfrye.jpg?width=80')),
  XcCoaches(name: "Jacob Wahlenmaier", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2019/12/6/Coach_Wahlenmaier.jpg?width=80')),
  XcCoaches(name: "Matthew Beal", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2019/12/6/Beal_Crop.jpg?width=80')),
  XcCoaches(name: "Anna Restemayer", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2020/10/21/Restemayer.jpg?width=80')),
];