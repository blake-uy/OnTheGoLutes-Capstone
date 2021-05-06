import 'package:flutter/material.dart';
import 'mtfScheduleScrap.dart';

class MTFPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<MTFPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/mtrack2.jpg', fit: BoxFit.cover),
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
                        itemCount: mtrackPlayers.length,
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
                                            image: mtrackPlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(mtrackPlayers[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(mtrackPlayers[index].year + " / "  + mtrackPlayers[index].position,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(mtrackPlayers[index].hometown + " / " + mtrackPlayers[index].highSchool, style: TextStyle(fontSize: 14, color: Colors.white), textAlign: TextAlign.center,),
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
                        itemCount: mtrackCoaches.length,
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
                                            image: mtrackCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(mtrackCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(mtrackCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),

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

class MTrackPlayers
{
  MTrackPlayers({this.name, this.position, this.year, this.hometown, this.highSchool, this.image});
  final String name;
  final String position;
  final String year;
  final String hometown;
  final String highSchool;
  final NetworkImage image;
}

List<MTrackPlayers> mtrackPlayers = <MTrackPlayers>[
  MTrackPlayers(name: "Jai Alapai", year: "Sophomore", hometown: "Kapa'a, HI", highSchool: "Kapa'a", position: "Sprints", image: NetworkImage('https://golutes.com/images/2021/2/9/Alapai.JPG?width=80')),
  MTrackPlayers(name: "Erick Arcos", year: "Junior", hometown: "Graham, WA", highSchool: "Graham-Kapowsin", position: "Distance", image: NetworkImage('https://golutes.com/images/2020/9/30/Arcos.JPG?width=80')),
  MTrackPlayers(name: "Brennon Blevins", year: "Freshman", hometown: "Mukilteo, WA", highSchool: "King's", position: "Sprints/Throws", image: NetworkImage("https://golutes.com/images/2021/2/18/Blevins.JPG?width=80")),
  MTrackPlayers(name: "Seth Bridge", year: "Senior", hometown: "Elma, WA", highSchool: "North Beach", position: "Throws", image: NetworkImage("https://golutes.com/images/2021/2/9/BRIDGE.JPG?width=80")),
  MTrackPlayers(name: "Cooper Claxton", year: "Freshman", hometown: "Federal Way, WA", highSchool: "Decatur", position: "Jumps", image: NetworkImage("https://golutes.com/images/2021/2/9/Claxton.JPG?width=80")),
  MTrackPlayers(name: "Larson Fairbairn", year: "Sophomore", hometown: "Ferndale, WA", highSchool: "Ferndale", position: "Throws", image: NetworkImage("https://golutes.com/images/2021/2/9/Fairbairn.JPG?width=80")),
  MTrackPlayers(name: "Drew Forbes ", year: "Junior", hometown: "Aurora, CO", highSchool: "Cherokee Trail", position: "Pole Vault", image: NetworkImage("https://golutes.com/images/2021/2/9/Forbes.JPG?width=80")),
  MTrackPlayers(name: "Hezekiah Goodwin", year: "Senior", hometown: "Sacramento, CA", highSchool: "Kentlake", position: "Mid-Distance", image: NetworkImage("https://golutes.com/images/2020/9/30/Goodwin.JPG?width=80")),
  MTrackPlayers(name: "Bryce Johnson", year: "Senior", hometown: "Bellingham, WA", highSchool: "Sehome", position: "Mid-Distance", image: NetworkImage("https://golutes.com/images/2020/9/30/johnson.jpg?width=80")),
  MTrackPlayers(name: "Blake Leahy", year: "Freshman", hometown: "Buckley, WA", highSchool: "White River", position: "Pole Vault", image: NetworkImage("https://golutes.com/images/2021/2/9/Leahy.JPG?width=80")),
  MTrackPlayers(name: "Stefans Lusis", year: "Sophomore", hometown: "Kingston, WA", highSchool: "Kingston", position: "Distance", image: NetworkImage("https://golutes.com/images/2019/8/28/Lusis.jpg?width=80")),
  MTrackPlayers(name: "Jonah Maier", year: "Sophomore", hometown: "Seattle, WA", highSchool: "Ballard", position: "Mid-Distance", image: NetworkImage("https://golutes.com/images/2020/9/30/Jonah_Maier.jpg?width=80")),
  MTrackPlayers(name: "Johnny Maier", year: "Senior", hometown: "Seattle, WA", highSchool: "Ballard", position: "Distance", image: NetworkImage("https://golutes.com/images/2020/9/30/Johnny_Maier.jpg?width=80")),
  MTrackPlayers(name: "Owen Olsen", year: "Freshman", hometown: "Portland, OR", highSchool: "Centennial", position: "Pole Vault", image: NetworkImage("https://golutes.com/images/2021/2/9/Olsen.JPG?width=80")),
  MTrackPlayers(name: "Phillip Philbrick", year: "Freshman", hometown: "Federal Way, WA", highSchool: "Todd Beamer", position: "Distance", image: NetworkImage("https://golutes.com/images/2021/2/9/Philbrick.JPG?width=80")),
  MTrackPlayers(name: "Ben Poplin", year: "Sophomore", hometown: "Ocean Shores, WA", highSchool: "North Beach", position: "Throws", image: NetworkImage("https://golutes.com/images/2021/2/9/Poplin.JPG?width=80")),
  MTrackPlayers(name: "Masum Real", year: "Freshman", hometown: "Tacoma, WA", highSchool: "Franklin", position: "Throws", image: NetworkImage("https://golutes.com/images/2020/11/20/REAL1.JPG?width=80")),
  MTrackPlayers(name: "Colby Rhinelander", year: "Freshman", hometown: "Kuliouou, HI", highSchool: "St.Louis", position: "N/A", image: NetworkImage("https://golutes.com/images/2021/2/18/Rhinelander_Colby.JPG?width=80")),
  MTrackPlayers(name: "Trey Robak", year: "Junior", hometown: "Santee, CA", highSchool: "Grossmont", position: "Distance", image: NetworkImage("https://golutes.com/images/2020/9/30/Robak.JPG?width=80")),
  MTrackPlayers(name: "Danny Samson", year: "Junior", hometown: "Olympia, WA", highSchool: "Capital", position: "Distance", image: NetworkImage("https://golutes.com/images/2021/2/9/Samson.JPG?width=80")),
  MTrackPlayers(name: "Keola Sanchez", year: "Freshman", hometown: "Waipahu, HI", highSchool: "Kapalama", position: "Sprints", image: NetworkImage("https://golutes.com/images/2021/2/9/Sanchez.JPG?width=80")),
  MTrackPlayers(name: "Alec Serrao", year: "Sophomore", hometown: "Mililani, HI", highSchool: "Kamehameha", position: "Sprints", image: NetworkImage("https://golutes.com/images/2019/12/6/Serrao.jpg?width=80")),
  MTrackPlayers(name: "Corey Solomon", year: "Senior", hometown: "Graham, WA", highSchool: "Graham Kapowsin", position: "Pole Vault", image: NetworkImage("https://golutes.com/images/2021/2/9/solomon.JPG?width=80")),
  MTrackPlayers(name: "Joe Stilnovich", year: "Senior", hometown: "Sumner, WA", highSchool: "Bellarmine Prep", position: "Sprints", image: NetworkImage("https://golutes.com/images/2019/12/6/Stilnovich.jpg?width=80")),
  MTrackPlayers(name: "Rudy Stilnovich", year: "Freshman", hometown: "Sumner, WA", highSchool: "Bellarmine Prep", position: "Throws", image: NetworkImage("https://golutes.com/images/2020/5/6/Rudy_Stilnovich.JPG?width=80")),
  MTrackPlayers(name: "Ryan Stracke", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Rogers", position: "Mid-Distance", image: NetworkImage("https://golutes.com/images/2020/9/30/Stracke.JPG?width=80")),
  MTrackPlayers(name: "Cheyn Tam-Switzer", year: "Sophomore", hometown: "Hilo, HI", highSchool: "Waiakea", position: "Sprints/Jumps", image: NetworkImage("https://golutes.com/images/2021/2/9/Tam_Switzer.JPG?width=80")),
  MTrackPlayers(name: "Wyatt Tayon", year: "Sophomore", hometown: "Stanwood, WA", highSchool: "Stanwood", position: "Throws", image: NetworkImage("https://golutes.com/images/2021/2/9/Tayon.JPG?width=80")),
  MTrackPlayers(name: "Ethan Tucey", year: "Freshman", hometown: "Lake Stevens, WA", highSchool: "Lake Stevens", position: "Distance", image: NetworkImage("https://golutes.com/images/2020/9/30/Tucey.JPG?width=80")),
  MTrackPlayers(name: "Malik White", year: "Senior", hometown: "Seattle, WA", highSchool: "Highline", position: "Sprints/Throws", image: NetworkImage("https://golutes.com/images/2020/11/20/WHITE.JPG?width=80")),
  MTrackPlayers(name: "Will Wright", year: "Freshman", hometown: "Gig Harbor, WA", highSchool: "Peninsula", position: "Mid-Distance", image: NetworkImage("https://golutes.com/images/2021/2/9/Wright.JPG?width=80")),


];

class MTrackCoaches
{
  MTrackCoaches({this.name, this.title, this.image});
  final String name;
  final String title;
  final NetworkImage image;
}

List<MTrackCoaches> mtrackCoaches = <MTrackCoaches>[
  MTrackCoaches(name: "Adam Frye", title: "Head Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//adamfrye.jpg?width=80')),
  MTrackCoaches(name: "Trey Henderson", title: "Assistant Coach (Throws)", image: NetworkImage('https://golutes.com/images/2018/4/24//trey_henderson.jpg?width=80')),
  MTrackCoaches(name: "Pat Licari", title: "Assistant Coach (Pole Vault)", image: NetworkImage('https://golutes.com/images/2020/1/21/Licari.jpg?width=80')),
  MTrackCoaches(name: "Marqui Makupson", title: "Assistant Coach (Sprints)", image: NetworkImage('https://golutes.com/images/2019/12/6/Coach_Makupson.jpg?width=80')),
  MTrackCoaches(name: "Anna Restemayer", title: "Assistant Coach (Distance)", image: NetworkImage('https://golutes.com/images/2020/10/21/Restemayer.jpg?width=80')),
  MTrackCoaches(name: "Jacob Wahlenmaier", title: "Assistant Coach(Distance)", image: NetworkImage('https://golutes.com/images/2019/12/6/Coach_Wahlenmaier.jpg?width=80')),
  MTrackCoaches(name: "Curt Wilson", title: "Assistant Coach(High Jump)", image: NetworkImage('https://golutes.com/images/2020/1/21/C_Wilson.jpg?width=80')),
];