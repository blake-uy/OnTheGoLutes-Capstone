import 'package:flutter/material.dart';

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
                Container(
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: msocCoaches.length,
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
                                            image: msocCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(msocCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(msocCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),

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

class MSocCoaches
{
  MSocCoaches({this.name, this.title, this.image});
  final String name;
  final String title;
  final NetworkImage image;
}

List<MSocCoaches> msocCoaches = <MSocCoaches>[
  MSocCoaches(name: "John Yorke", title: "Head Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//yorke.jpg?width=80')),
  MSocCoaches(name: "Jamie Bloomstine", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//bloomstine.jpg?width=80')),
  MSocCoaches(name: "Peter Voiles", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//voiles.jpg?width=80')),
  MSocCoaches(name: "Derek Johnson", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=80')),
  MSocCoaches(name: "Jimmy Fioretti", title: "Assistant Coach", image: NetworkImage('https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=80')),
  MSocCoaches(name: "Willy Leiste", title: "Goalkeeper Coach", image: NetworkImage('https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=80')),
];