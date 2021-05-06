import 'package:flutter/material.dart';

class FBPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<FBPage> with SingleTickerProviderStateMixin {
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
           // elevation: 0,
            expandedHeight: 175.0,
            //  collapsedHeight: 57,

            /////////////////////
            // FOR THE PICTURE //
            /////////////////////
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              //   title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
              background: Image.asset('images/fb.jpg', fit: BoxFit.cover),
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
                        itemCount: footPlayers.length,
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
                                            image: footPlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(footPlayers[index].number + " " + footPlayers[index].name, style: TextStyle(fontSize: 25.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(footPlayers[index].position + " / " + footPlayers[index].height + " / " + footPlayers[index].year,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(footPlayers[index].hometown + " / " + footPlayers[index].highSchool, style: TextStyle(fontSize: 16.5, color: Colors.white), textAlign: TextAlign.center,),
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
                        itemCount: footCoaches.length,
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
                                            image: footCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(footCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(footCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),

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

class FootPlayers
{
  FootPlayers({this.number, this.name, this.year, this.hometown, this.highSchool, this. position, this.height, this.image});
  final String number;
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String position;
  final String height;
  final NetworkImage image;
}

List<FootPlayers> footPlayers = <FootPlayers>[
  FootPlayers(number: "#1", name: "Alex Rendon", year: "Senior", hometown: "North Bend, WA", highSchool: "Mount Si", position: "WR", height: """ 5'9" """, image: NetworkImage('https://golutes.com/images/2021/2/18/Rendon.JPG?width=80')),
  FootPlayers(number: "#2", name: "Regan Divina", year: "Sophomore", hometown: "Olympia, WA", highSchool: "Capital", position: "DB", height: """ 5'8" """, image: NetworkImage('https://golutes.com/images/2020/11/20/DIVINA.JPG?width=80')),
  FootPlayers(number: "#2", name: "Jace Keim", year: "Junior", hometown: "Gig Harbor, WA", highSchool: "Peninsula", position: "WR", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/KEIM.JPG?width=80")),
  FootPlayers(number: "#3", name: "Liam Nabors", year: "Senior", hometown: "Vancouver, WA", highSchool: "King's Way Christian", position: "QB", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Nabors.JPG?width=80")),
  FootPlayers(number: "#3", name: "Cheyn Tam-Switzer", year: "Sophomore", hometown: "Hilo, HI", highSchool: "Waiakea", position: "DB", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/TAM_SWITZER.JPG?width=80")),
  FootPlayers(number: "#4", name: "Laakea Ane", year: "Sophomore", hometown: "Waianae, HI", highSchool: "Kamehameha", position: "TE", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/20/ANE.JPG?width=80")),
  FootPlayers(number: "#4", name: "Kord Tuttle", year: "Sophomore", hometown: "Prosser, WA", highSchool: "Prosser", position: "DB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/TUTTLE.JPG?width=80")),
  FootPlayers(number: "#5", name: "Max Larson", year: "Senior", hometown: "Kenmore, WA", highSchool: "Inglemoor", position: "DE", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/20/LARSON.JPG?width=80")),
  FootPlayers(number: "#5", name: "Cedric Miles", year: "Junior", hometown: "Mossyrock, WA", highSchool: "Mossyrock", position: "WR", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2019/8/28/Miles.jpg?width=80")),
  FootPlayers(number: "#6", name: "Tyson Creekmur", year: "Senior", hometown: "Honolulu, HI", highSchool: "Kaiser", position: "LB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/CREEKMER.jpg?width=80")),
  FootPlayers(number: "#6", name: "Kellan Kranc", year: "Freshman", hometown: "Enumclaw, WA", highSchool: "Enumclaw", position: "QB", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/11/20/KRANC.JPG?width=80")),
  FootPlayers(number: "#7", name: "Wesley Nixon", year: "Senior", hometown: "Fife, WA", highSchool: "Fife", position: "WR", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/NIXON.JPG?width=80")),
  FootPlayers(number: "#8", name: "Nick Knutson", year: "Junior", hometown: "Bellingham, WA", highSchool: "Bellingham", position: "QB", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/20/KNUTSON.JPG?width=80")),
  FootPlayers(number: "#8", name: "Josef Triman", year: "Senior", hometown: "Portland, OR", highSchool: "Westview", position: "DB", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/11/20/TRIMAN.JPG?width=80")),
  FootPlayers(number: "#9", name: "Michael Gurr", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Cascade Christian", position: "DB", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/20/GURR.JPG?width=80")),
  FootPlayers(number: "#10", name: "Erick Bainter", year: "Sophomore", hometown: "Bothell, WA", highSchool: "Bothell", position: "QB", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/11/20/BAINTER.JPG?width=80")),
  FootPlayers(number: "#10", name: "Shaun Kim", year: "Junior", hometown: "Honolulu, HI", highSchool: "Kaiser", position: "DB", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/20/KIM.JPG?width=80")),
  FootPlayers(number: "#11", name: "Kalen Davis-White", year: "Freshman", hometown: "Hilo, HI", highSchool: "Hilo", position: "LB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/DAVIS_WHITE.JPG?width=80")),
  FootPlayers(number: "#11", name: "Anthony Rath", year: "Junior", hometown: "Philomath, OR", highSchool: "Philomath", position: "K", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/RATH.JPG?width=80")),
  FootPlayers(number: "#12", name: "Jai Alapai", year: "Sophomore", hometown: "Kapa'a, HI", highSchool: "Kapa'a", position: "DB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/ALAPAI.JPG?width=80")),
  FootPlayers(number: "#12", name: "Lucas Keller", year: "Sophomore", hometown: "Deer Park, WA", highSchool: "Deer Park", position: "TE", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/20/KELLER.JPG?width=80")),
  FootPlayers(number: "#13", name: "Daniel Hylton", year: "Freshman", hometown: "Tacoma, WA", highSchool: "Decatur", position: "DB", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/HYLTON.JPG?width=80")),
  FootPlayers(number: "#13", name: "John Walker", year: "Freshman", hometown: "Cordele, GA", highSchool: "Cordele", position: "WR", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Walker.JPG?width=80")),
  FootPlayers(number: "#14", name: "Brandon Baniaga", year: "Junior", hometown: "Honolulu, HI", highSchool: "Kamehameha", position: "WR", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/BANIAGA.JPG?width=80")),
  FootPlayers(number: "#14", name: "Ashton Barton", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Rogers", position: "LB", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2019/8/28/Barton.jpg?width=80")),
  FootPlayers(number: "#15", name: "Bryce Missey", year: "Senior", hometown: "Spanaway, WA", highSchool: "Bethel", position: "QB", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/20/MISSEY.JPG?width=80")),
  FootPlayers(number: "#17", name: "Jesse Canda", year: "Freshman", hometown: "Kealakekua, HI", highSchool: "Konawaena", position: "WR", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/20/CANDA.JPG?width=80")),
  FootPlayers(number: "#19", name: "Rikiho Sakai", year: "Junior", hometown: "Kai, HI", highSchool: "Kaiser", position: "WR", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/SAKAI.JPG?width=80")),
  FootPlayers(number: "#20", name: "Cody Brown", year: "Senior", hometown: "Portland, OR", highSchool: "Tualatin", position: "RB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Brown.JPG?width=80")),
  FootPlayers(number: "#21", name: "Connor Chun", year: "Freshman", hometown: "Honolulu, HI", highSchool: "Kaiser", position: "LB", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/20/CHUN.JPG?width=80")),
  FootPlayers(number: "#22", name: "Jared Elwin", year: "Junior", hometown: "Honolulu, HI", highSchool: "Roosevelt", position: "CB", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2019/8/28/Elwin.jpg?width=80")),
  FootPlayers(number: "#23", name: "Francisco Lugo", year: "Freshman", hometown: "Tacoma, WA", highSchool: "Spanaway Lake", position: "DB", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/LUGO.JPG?width=80")),
  FootPlayers(number: "#24", name: "Tristan Thomas", year: "Senior", hometown: "Woodland, WA", highSchool: "Woodland", position: "DL", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2019/8/28/Thomas.jpg?width=80")),
  FootPlayers(number: "#25", name: "Peiyton Hilliard", year: "Junior", hometown: "Parkland, WA", highSchool: "Washington", position: "P/K", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/20/HILLIARD.JPG?width=80")),
  FootPlayers(number: "#26", name: "Brennon Blevins", year: "Junior", hometown: "Mukilteo, WA", highSchool: "King's", position: "WR", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Blevins.JPG?width=80")),
  FootPlayers(number: "#27", name: "Brent Child", year: "Sophomore", hometown: "Kennewick, WA", highSchool: "Kamiakin", position: "DB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2019/8/28/Child.jpg?width=80")),
  FootPlayers(number: "#28", name: "Malik White", year: "Senior", hometown: "Seattle, WA", highSchool: "Highline", position: "RB", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/20/WHITE.JPG?width=80")),
  FootPlayers(number: "#29", name: "Tyler Perpignan", year: "Sophomore", hometown: "Honolulu, HI", highSchool: "Mililani", position: "LB", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/20/PERPIGNAN.JPG?width=80")),
  FootPlayers(number: "#30", name: "Colby Rhinelander", year: "Freshman", hometown: "Kuliouou, HI", highSchool: "St.Louis", position: "DB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Rhinelander_Colby.JPG?width=80")),
  FootPlayers(number: "#31", name: "Kaysen Higa", year: "Sophomore", hometown: "Kapolei, HI", highSchool: "Mililani", position: "WR", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/HIGA.JPG?width=80")),
  FootPlayers(number: "#32", name: "Ryasen Motoyama", year: "Freshman", hometown: "Wahiawa, HI", highSchool: "Mililani", position: "RB", height: """ 5'6" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Motoyama.JPG?width=80")),
  FootPlayers(number: "#33", name: "Chase Rhinelander", year: "Senior", hometown: "Kuliouou, HI", highSchool: "Kamehameha", position: "DB", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Rhinelander_Chase.JPG?width=80")),
  FootPlayers(number: "#34", name: "Michael Kelley Jr.", year: "Freshman", hometown: "Graham, WA", highSchool: "Graham-Kapowsin", position: "TE", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Kelley.JPG?width=80")),
  FootPlayers(number: "#35", name: "Cody Dyche", year: "Freshman", hometown: "Amity, OR", highSchool: "Amity", position: "LB", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/20/DYCHE.JPG?width=80")),
  FootPlayers(number: "#36", name: "Syi Campbell", year: "Sophomore", hometown: "Spokane, WA", highSchool: "Mead", position: "DB", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/11/20/CAMPBELL.JPG?width=80")),
  FootPlayers(number: "#37", name: "Gianni Lafave", year: "Sophomore", hometown: "Lakewood, WA", highSchool: "Clover Park", position: "DE", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/LAFAVE.JPG?width=80")),
  FootPlayers(number: "#38", name: "Zach Vick", year: "Freshman", hometown: "Las Cruces, NM", highSchool: "Mayfield", position: "WR", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/20/VICK.JPG?width=80")),
  FootPlayers(number: "#41", name: "Benjamin Schultz", year: "Freshman", hometown: "Mart, TX", highSchool: "Mart", position: "LB", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/20/SCHULTZ.JPG?width=80")),
  FootPlayers(number: "#42", name: "Alexander Gillies", year: "Sophomore", hometown: "Tacoma, WA", highSchool: "Lincoln", position: "DE", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/20/GILLIES.JPG?width=80")),
  FootPlayers(number: "#43", name: "Gavin Knapp", year: "Sophomore", hometown: "Fife, WA", highSchool: "Fife", position: "DL", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/KNAPP.JPG?width=80")),
  FootPlayers(number: "#44", name: "Kyle Robinson", year: "Sophomore", hometown: "Yelm, WA", highSchool: "Yelm", position: "TE", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/20/ROBINSON.JPG?width=80")),
  FootPlayers(number: "#45", name: "Nathan Suhrbier", year: "Freshman", hometown: "Winlock, WA", highSchool: "Winlock", position: "DE", height: """ 6'4" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Suhrbier.JPG?width=80")),
  FootPlayers(number: "#50", name: "Blake Doss", year: "Freshman", hometown: "Lacey, WA", highSchool: "Timberline", position: "DE", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Dass.JPG?width=80")),
  FootPlayers(number: "#51", name: "Gabe Kvam", year: "Freshman", hometown: "Maple Valley, WA", highSchool: "Tahoma", position: "OL", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/20/KVAM.JPG?width=80")),
  FootPlayers(number: "#52", name: "Braden Dick", year: "Sophomore", hometown: "Bothell, WA", highSchool: "Inglemoor", position: "OL", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/20/DICK.JPG?width=80")),
  FootPlayers(number: "#53", name: "Masum Real", year: "Freshman", hometown: "Tacoma, WA", highSchool: "Franklin", position: "OL", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/20/REAL1.JPG?width=80")),
  FootPlayers(number: "#55", name: "Wyatt Winkle", year: "Junior", hometown: "Chico, CA", highSchool: "Pleasant Valley", position: "OL", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/20/WINKLE.JPG?width=80")),
  FootPlayers(number: "#57", name: "Zachary Holliday", year: "Freshman", hometown: "Eugene, OR", highSchool: "Junction City", position: "DE", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/20/HOLLIDAY.JPG?width=80")),
  FootPlayers(number: "#58", name: "Kaleo Sablan", year: "Sophomore", hometown: "Tacoma, WA", highSchool: "Spanaway Lake", position: "OL", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/20/SABLAM.JPG?width=80")),
  FootPlayers(number: "#60", name: "Aeryk Hatico", year: "Freshman", hometown: "Honolulu, HI", highSchool: "St.Louis", position: "OL", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Hatico.JPG?width=80")),
  FootPlayers(number: "#62", name: "Aiden Shroyer", year: "Sophomore", hometown: "Deer Park, WA", highSchool: "Deer Park", position: "DL", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/20/SHRAYER.JPG?width=80")),
  FootPlayers(number: "#63", name: "Justin Morris", year: "Sophomore", hometown: "Thousand Oaks, CA", highSchool: "Thousand Oaks", position: "OL", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/MORRIS.JPG?width=80")),
  FootPlayers(number: "#64", name: "Thomas Jacobs", year: "Freshman", hometown: "Federal Way, WA", highSchool: "Woodrow Wilson", position: "OL", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/20/JACOBS.JPG?width=80")),
  FootPlayers(number: "#65", name: "Eden Cisneros", year: "Sophomore", hometown: "Forks, WA", highSchool: "Forks", position: "DT", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2020/11/20/CISNEROS.JPG?width=80")),
  FootPlayers(number: "#68", name: "Nico Skinner", year: "Freshman", hometown: "Sumner, WA", highSchool: "Sumner", position: "OL", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/20/SKINNER.JPG?width=80")),
  FootPlayers(number: "#69", name: "Colin Chun", year: "Senior", hometown: "Honolulu, HI", highSchool: "Kaiser", position: "OL", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/20/CHUN1.JPG?width=80")),
  FootPlayers(number: "#72", name: "Jacob Espinosa", year: "Junior", hometown: "Yorba Linda, CA", highSchool: "Servite", position: "OL", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2019/8/28/Espinosa.jpg?width=80")),
  FootPlayers(number: "#73", name: "Seth Verenski", year: "Sophomore", hometown: "Clarksville, TN", highSchool: "ALA Queen Creek", position: "OL", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/20/VERENSKI.JPG?width=80")),
  FootPlayers(number: "#74", name: "Ryan Lusk", year: "Senior", hometown: "Buckley, WA", highSchool: "White River", position: "OL", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/20/LUSK.JPG?width=80")),
  FootPlayers(number: "#75", name: "Logan Shimskey", year: "Sophomore", hometown: "Kennewick, WA", highSchool: "Southridge", position: "OL", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/SHIMSKEY.JPG?width=80")),
  FootPlayers(number: "#77", name: "Jake Evans", year: "Freshman", hometown: "Camano Island, WA", highSchool: "Stanwood", position: "OL", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/20/EVANS.JPG?width=80")),
  FootPlayers(number: "#79", name: "Daniel Southard", year: "Freshman", hometown: "Tacoma, WA", highSchool: "Bellarmine Prep", position: "OL", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2020/11/20/SOUTHARD.JPG?width=80")),
  FootPlayers(number: "#80", name: "Manuel Felan", year: "Freshman", hometown: "Toppenish, WA", highSchool: "Toppenish", position: "WR", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/20/FELAN.JPG?width=80")),
  FootPlayers(number: "#81", name: "Kane Tubera", year: "Sophomore", hometown: "Lanai City, HI", highSchool: "Lanai City", position: "WR", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2019/8/28/Tubera.jpg?width=80")),
  FootPlayers(number: "#82", name: "Ryan Flood", year: "Senior", hometown: "Gig Harbor, WA", highSchool: "Gig Harbor", position: "TE", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/FLOOD.JPG?width=80")),
  FootPlayers(number: "#84", name: "Keahi Holden", year: "Freshman", hometown: "Kilauea, HI", highSchool: "Kapaa", position: "WR", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/HOLDEN.JPG?width=80")),
  FootPlayers(number: "#85", name: "Peyton Bice", year: "Freshman", hometown: "Gig Harbor, WA", highSchool: "Peninsula", position: "TE", height: """ 6'3" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Bice.JPG?width=80")),
  FootPlayers(number: "#87", name: "Marc Basa", year: "Freshman", hometown: "Captain Cook, HI", highSchool: "Konawaena", position: "WR", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/20/BASA.JPG?width=80")),
  FootPlayers(number: "#88", name: "Max Boekenoogen", year: "Junior", hometown: "Bremerton, WA", highSchool: "Bremerton", position: "P", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/20/BOEKENOOGAN.JPG?width=80")),
  FootPlayers(number: "#89", name: "Griffin Clark", year: "Freshman", hometown: "Sumner, WA", highSchool: "Sumner", position: "WR", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/20/CLARK.JPG?width=80")),
  FootPlayers(number: "#90", name: "Nico Golla", year: "Freshman", hometown: "Puyallup, WA", highSchool: "Graham Kapowsin", position: "DL", height: """ 5'7" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Golla.JPG?width=80")),
  FootPlayers(number: "#91", name: "Nasier Ford", year: "Freshman", hometown: "Puyallup, WA", highSchool: "Graham Kapowsin", position: "DL", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Ford.JPG?width=80")),
  FootPlayers(number: "#92", name: "Connor Davis", year: "Freshman", hometown: "Renton, WA", highSchool: "Liberty", position: "P/K", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2021/2/18/Davis.JPG?width=80")),
  FootPlayers(number: "#93", name: "Noah Dunham", year: "Sophomore", hometown: "Snohomish, WA", highSchool: "Snohomish", position: "DE", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/20/DUNHAM.JPG?width=80")),
  FootPlayers(number: "#94", name: "Davis Fairchild", year: "Junior", hometown: "Purcellville, VA", highSchool: "Loudoun Valley", position: "P", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/20/FAIRCHILD.JPG?width=80")),
  FootPlayers(number: "#97", name: "Andrew Comito", year: "Freshman", hometown: "Federal Way, WA", highSchool: "Decatur", position: "P/K", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/20/COMITO.JPG?width=80")),

];

class FootCoaches
{
  FootCoaches({this.name, this.title, this.image});
  final String name;
  final String title;
  final NetworkImage image;
}

List<FootCoaches> footCoaches = <FootCoaches>[
  FootCoaches(name: "Brant McAdams", title: "Head Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//brant_mcadams.jpg?width=80')),
  FootCoaches(name: "Spencer Crace", title: "Offensive Coordinator/WR Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//crace.jpg?width=80')),
  FootCoaches(name: "Jud Keim", title: "Defensive Coordinator/DB Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//keim.jpg?width=80')),
  FootCoaches(name: "Ricky Daley", title: "Outside Wide Receivers Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//daley.jpg?width=80')),
  FootCoaches(name: "Derek Sparks", title: "Running Backs Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//derek_sparks.jpg?width=80')),
  FootCoaches(name: "George Crace", title: "Tight Ends Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//gcrace.jpg?width=80')),
  FootCoaches(name: "Trey Henderson", title: "Defensive Line Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//trey_henderson.jpg?width=80')),
  FootCoaches(name: "Michael Byrne", title: "Quarterbacks Coach", image: NetworkImage('https://golutes.com/images/2019/8/20/Byrne_71.jpg?width=80')),
];

