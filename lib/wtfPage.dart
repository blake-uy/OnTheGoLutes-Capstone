import 'package:flutter/material.dart';
import 'wtfScheduleScrap.dart';

class WTFPlayers
{
  WTFPlayers({this.name, this.year, this.hometown, this.highSchool, this.event, this.image});
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String event;
  final NetworkImage image;
}

List<WTFPlayers> wtfplayers = <WTFPlayers>[
  WTFPlayers(name: "Josie Austin", year: "Freshman", hometown: "Auburn, WA", highSchool: "Auburn Mountainview HS", event: "Distance", image: NetworkImage('https://golutes.com/images/2020/9/30/Austin.JPG?width=300')),
  WTFPlayers(name: "Megan Barnhouse", year: "Sophomore", hometown: "El Paso, TX", highSchool: "Eastwood HS", event: "Hurdles/Jumps", image: NetworkImage('https://golutes.com/images/2021/1/26/barnhouse.jpg?width=80')),
  WTFPlayers(name: "Riley Buckmaster", year: "Junior", hometown: "Snoqualmie, WA", highSchool: "Mount Si HS", event: "Pole Vault", image: NetworkImage('https://golutes.com/images/2021/2/9/Buckmaster.JPG?width=80')),
  WTFPlayers(name: "Emily Capps", year: "Junior", hometown: "Henderson, NV", highSchool: "Foothill HS", event: "Throws", image: NetworkImage('https://golutes.com/images/2021/2/9/Capps.JPG?width=80')),
  WTFPlayers(name: "Lorin Cox", year: "Freshman", hometown: "Ocean Shores, WA", highSchool: "North Beach HS", event: "Sprints", image: NetworkImage('https://golutes.com/images/2021/2/9/cox.JPG?width=80')),
  WTFPlayers(name: "Carly Dailey", year: "Junior", hometown: "Honolulu, HI", highSchool: "Moanalua HS", event: "Mid-Distance", image: NetworkImage('https://golutes.com/images/2019/8/28/Dailey.jpg?width=80')),
  WTFPlayers(name: "Sulin Degollado", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Rogers HS", event: "Mid-Distance", image: NetworkImage('https://golutes.com/images/2019/8/28/Degollado.jpg?width=80')),
  WTFPlayers(name: "Maria Flynn", year: "Freshman", hometown: "Bainbridge, WA", highSchool: "Bainbridge HS", event: "Jumps", image: NetworkImage('https://golutes.com/images/2021/2/9/flynn.JPG?width=80')),
  WTFPlayers(name: "Bailey Forsyth", year: "Senior", hometown: "Langley, WA", highSchool: "South Whidbey HS", event: "Sprints", image: NetworkImage('https://golutes.com/images/2021/2/9/Forsyth.JPG?width=80')),
  WTFPlayers(name: "Adrienne Gulley", year: "Senior", hometown: "Boise, ID", highSchool: "Centennial HS", event: "Sprints/Hurdles", image: NetworkImage('https://golutes.com/images/2021/2/9/gulley.JPG?width=80')),
  WTFPlayers(name: "Katelyn Harris", year: "Senior", hometown: "Auburn WA", highSchool: "Auburn Riverside HS", event: "Throws", image: NetworkImage('https://golutes.com/images/2021/2/9/brown.JPG?width=80')),
  WTFPlayers(name: "Anna Iverson", year: "Freshman", hometown: "Juneau, AL", highSchool: "Juneau HS", event: "Distance", image: NetworkImage('https://golutes.com/images/2020/9/30/Iverson_A.jpg?width=80')),
  WTFPlayers(name: "Brittany Iverson", year: "Senior", hometown: "Puyallup, WA", highSchool: "Emerald Ridge HS", event: "Distance", image: NetworkImage('https://golutes.com/images/2020/9/30/Iverson_B.jpg?width=80')),
  WTFPlayers(name: "Kylee Johnson", year: "Senior", hometown: "Kent, WA", highSchool: "Kentlake HS", event: "Throws", image: NetworkImage('https://golutes.com/images/2021/2/9/Johnson_4.JPG?width=80')),
  WTFPlayers(name: "Alicia Krivanek", year: "Junior", hometown: "Redmond, WA", highSchool: "Cedarcrest HS", event: "Distance", image: NetworkImage('https://golutes.com/images/2020/9/30/Krivanek.JPG?width=80')),
  WTFPlayers(name: "Mary McLeod", year: "Freshman", hometown: "Vancouver, WA", highSchool: "Prairie HS", event: "Sprints/Mid-Distance", image: NetworkImage('https://golutes.com/images/2021/2/9/mcleod.JPG?width=80')),
  WTFPlayers(name: "Tabitha Messineo", year: "Junior", hometown: "Puyallup, WA", highSchool: "Puyallup HS", event: "Multi-Event", image: NetworkImage('https://golutes.com/images/2021/2/9/messineo.JPG?width=80')),
  WTFPlayers(name: "Ava Nelson", year: "Junior", hometown: "Mossyrock, WA", highSchool: "Mossyrock HS", event: "Throws", image: NetworkImage('https://golutes.com/images/2021/2/9/nelson.JPG?width=80')),
  WTFPlayers(name: "Kristine Nguyen", year: "Sophomore", hometown: "Tacoma, WA", highSchool: "Mt. Tahoma HS", event: "Hurdles/Pole Vault", image: NetworkImage('https://golutes.com/images/2021/2/9/Nguyen.JPG?width=80')),
  WTFPlayers(name: "Sarah Paquet", year: "Sophomore", hometown: "Olympia, WA", highSchool: "Olympia Academy", event: "Distance", image: NetworkImage('https://golutes.com/images/2020/9/30/Paquet.JPG?width=80')),
  WTFPlayers(name: "Joan Park", year: "Junior", hometown: "Mountlake Terrace, WA", highSchool: "Mountlake Terrace HS", event: "Mid-Distance", image: NetworkImage('https://golutes.com/images/2020/9/30/Park.JPG?width=80')),
  WTFPlayers(name: "Peyton Santos", year: "Sophomore", hometown: "Kennewick, WA", highSchool: "Southridge HS", event: "Throws", image: NetworkImage('https://golutes.com/images/2021/2/9/Santos.JPG?width=80')),
  WTFPlayers(name: "Lauren Wilson", year: "Senior", hometown: "Olympia, WA", highSchool: "Olympia HS", event: "Jumps", image: NetworkImage('https://golutes.com/images/2021/2/9/wilson.JPG?width=80')),

];

class WTFPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<WTFPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/wtf4.jpg', fit: BoxFit.cover),
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
                        itemCount: wtfplayers.length,
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
                                            image: wtfplayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Center(child:
                                          Text(wtfplayers[index].name, style: TextStyle(fontSize: 25.0,), textAlign: TextAlign.center,)),
                                          Text(wtfplayers[index].year + " / " + wtfplayers[index].hometown,
                                              style: TextStyle(fontSize: 17.0, ), textAlign: TextAlign.center),
                                          Text(wtfplayers[index].highSchool, style: TextStyle(fontSize: 16.0,), textAlign: TextAlign.center,),
                                          Text(wtfplayers[index].event, style: TextStyle(fontSize: 15.0)),
                                        ]
                                    )
                                    ),
                                  ]
                              )
                          );
                        }
                    )
                ),
                Center(child: Text("TAB THREE")),
                Center(child: Text("TAB FOUR")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}