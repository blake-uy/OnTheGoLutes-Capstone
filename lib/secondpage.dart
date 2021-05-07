import 'package:capstone3/crewPage.dart';
import 'package:flutter/material.dart';

import 'baseScheduleScrap.dart';

class SecondPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<SecondPage> with SingleTickerProviderStateMixin {
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.grey,
            expandedHeight: 175.0,

            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
           //   title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
              background: Image.asset('images/bsb2.jpg', fit: BoxFit.cover),
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
                            height: 100.0,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey, width: 1.0)),
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
                        itemCount: basePlayers.length,
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
                                            image: basePlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(
                                        child: Column(
                                          mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                          Text(basePlayers[index].number + " " + basePlayers[index].name, style: TextStyle(fontSize: 25.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(basePlayers[index].position + " / " + basePlayers[index].height + " / " + basePlayers[index].year,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(basePlayers[index].hometown + " / " + basePlayers[index].highSchool, style: TextStyle(fontSize: 16.5, color: Colors.white), textAlign: TextAlign.center,),
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
                      // Head Coach Start
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
                                    "https://golutes.com/images/2018/4/24//soete.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//soete.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Nolan Soete",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Head Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("253-535-8789",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("soetenp@plu.edu",
                                  style: TextStyle(
                                      fontSize: 15.0,
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
                                "Nolan Soete took over the reigns of the PLU baseball program prior to the 2016 campaign after serving on staff in various capacities since the 2007 season. Soete previously served as an outfield instructor, infield instructor, catcher instructor, recruiting coordinator, and hitting instructor while serving as the assistant head coach from 2011 to 2015. Soete's time with the Lutes has seen the program capture four Northwest Conference Championships and three NCAA regional berths, including a run to the 2016 West Region finals in his first season as head coach. Under Soete's direction, the Lutes qualified for the NWC Tournament for the fifth consecutive season in 2019, becoming the only program in the conference to make the postseason every year of the tournament's existence. Soete won his 100th career game during the season as the Lutes finished with a 22-16 overall record and a 14-10 record in NWC action. Soete's squad had four All-League selections, two All-Region honorees while Justin Armbruester was the NWC Pitcher of the Year and Andy Schmitz was NWC Freshman of the Year. Soete was named the NWC Coach of the Year in 2018 after guiding the Lutes to their second NWC regular season title in four years. PLU finished the season with a 25-17 overall record and an 18-6 mark in league play, highlighted by a program-record 12 game winning streak during the month of March. Soete's squad boasted nine All-Conference honorees, including three landing ABCA All-Region accolades while Jacob Bockelie was tabbed the NWC Player of the Year. Soete's 2017 squad led the nation in fielding percentage (.985) and ranked fourth nationally in double plays per game, finishing the season with a 25-14 record. The 2017 Lutes owned a 17-7 record in NWC play while earning a three-game sweep of non-conference foe and eventual national champion California Lutheran University. Two Lutes earned All-Region honors by both the ABCA and D3baseball.com with Landon Packard securing the ABCA's prestigious Gold Glove Award. Soete led the Lutes to a NWC Tournament title and advanced to the NCAA Division III West Region Finals in his first season as head coach in 2016, bowing out to eventual national champion Trinity University and finishing the season with a 29-19 overall record. Additionally, pitcher Garrett Brown finished the season as an ABCA Second Team All-American. In his four seasons at the helm, the Lutes have secured 27 All-NWC citations and nine All-Region selections. A four-year letter winner while playing baseball at Pacific Lutheran, Soete earned 2005 second team All-Northwest Conference honors as a senior first baseman after hitting .317 with four home runs. Soete spent six years as a physical education teacher at Lakes High School after graduating from Pacific Lutheran University in 2006 and earning his MAT from Grand Canyon University. He and his wife, Jessica, have two daughters, Harper and Piper, and live in Lakewood.",
                                style: TextStyle(fontSize: 15.0, color: Colors.white)),

                          ])),
                      // SARA GRIFFIN END

                      // JEANKIE ACZON START
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
                                    "https://golutes.com/images/2018/4/24//taunt.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//taunt.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Sean Taunt",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Asst. Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
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
                                "Sean Taunt joined the Pacific Lutheran baseball program as an assistant coach starting with the 2012 season and was promoted to associate head coach prior to the 2019 season. As PLU's pitching coach, he has coached the Lutes to the top three team strikeout totals (355 in 2014, 342 in 2013 and 324 in 2015), as well as the lowest staff ERA in team history in 2014."
                                "Taunt, who earned an associate degree from Green River Community College, is now a lead instructor and director at Big League Edge Performance Baseball in Auburn after initially joining the organization as an instructor in 2006."
                                "He coached a 15U team in the 2010 Latin American Classic in the Dominican Republic and won a silver medal. Taunt has coached summer teams ages 14 through 18 over the last 10 years, and had one of his players taken in the 2011 Major League Baseball draft. In 2011 he started the Pro Baseball Club ZIPS organization, where he coaches the 18U ZIPS team."
                                "Additionally, Taunt served as a Puyallup High School baseball assistant coach from 2002-2011. He lives in Puyallup with his wife Tara.",
                                style: TextStyle(fontSize: 15.0, color: Colors.white)),
                          ])),

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
                                    "https://golutes.com/images/2018/4/24//richards.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//richards.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Scott Richards",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Asst Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
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
                                "Scott Richards joined the Pacific Lutheran baseball coaching staff in summer 2015 and serves as catching coach while also working with hitters."
                                "A 2004 graduate of Regis University, Richards was a two-time honorable mention all-conference performer at catcher. He earned his degree in business management, and he earned his Master's from City University in 2011. He is a special education teacher at Kentwood High School, where he served as an assistant coach for eight years and helped coach the team to state championships in 2010 and 2012."
                                "Richards lives in Sumner with his wife Laura and son Buckley.",
                                style: TextStyle(fontSize: 15.0, color: Colors.white)),
                          ])),

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
                                    "https://golutes.com/images/2018/4/24//landon_packard_bsb_2016_17.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//landon_packard_bsb_2016_17.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Landon Packard",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Asst Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
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
                                "Packard joined the PLU baseball staff as an assistant prior to the 2018 season and was elevated to the recruiting coordinator prior to the 2019-2020 academic year."
                                "A 2017 PLU graduate, Packard was a First Team All-Northwest Conference and an All-West Region honoree as a sophomore. He earned Honorable Mention All-NWC as a junior while earning First Team All-NWC, Second Team All-West Region by both the ABCA and D3baseball.com as a senior in addition to earning an ABCA Gold Glove Award for his defensive efforts at second base."
                                    "Packard logged 138 games in a Lute uniform, boasting a .329 batting average with 169 hits, 103 RBIs, 94 runs scored, and 52 extra base hits. A stellar fielder, Packard finished his career with a .978 fielding percentage, including a sterling .995 percentage during the 2017 campaign, committing just one error in 192 total chances.",
                                style: TextStyle(fontSize: 15.0, color: Colors.white)),
                          ])),

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
                                    "https://golutes.com/images/2018/4/24//cory_nelson_bsb_2015_16.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//cory_nelson_bsb_2015_16.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Corey Nelson",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Asst Coach",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
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
                                "Cory Nelson returned to his alma mater as an assistant coach prior to the 2020 season."
                                "Nelson will assist coach Taunt with the pitching staff and coach first base for the Lutes. The 2016 PLU graduate has been coaching and instructing at Big League Edge since graduation."
                                    "Nelson suited up for the Lutes as a starting pitcher from 2013 to 2016, a span that saw the Lutes win 108 games, making two trips to the NCAA Division III Tournament, and claiming a NWC regular season title in 2015 and an NWC Tournament title in 2016. He was named First Team All-NWC as a senior and was the inaugural winner of the OT Harstad MVP Award. ",
                                style: TextStyle(fontSize: 15.0, color: Colors.white)),
                          ])),
                    ])),

                /*Container(
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: baseCoaches.length,
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
                                            image: baseCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(baseCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(baseCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),
                                        ]
                                    )
                                    ),
                                  ]
                              )
                          );
                        }
                    )
                ),*/
                Center(child: Text("TAB FOUR")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BasePlayers
{
  BasePlayers({this.number, this.name, this.year, this.hometown, this.highSchool, this. position, this.height, this.image});
  final String number;
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String position;
  final String height;
  final NetworkImage image;
}

List<BasePlayers> basePlayers = <BasePlayers>[
  BasePlayers(number: "#1", name: "Austin Gormley", year: "Senior", hometown: "Renton, WA", highSchool: "Kentridge", position: "INF", height: """ 5'9" """, image: NetworkImage('https://golutes.com/images/2019/11/20/Gormley.JPG?width=80')),
  BasePlayers(number: "#2", name: "Tori Doten", year: "Senior", hometown: "Salem, OR", highSchool: "South Salem", position: "SS", height: """ 5'11" """, image: NetworkImage('https://golutes.com/images/2020/11/2/Doten.JPG?width=80')),
  BasePlayers(number: "#3", name: "Connor Lemma", year: "Junior", hometown: "Walla Walla, WA", highSchool: "Walla Walla", position: "C", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Lemma.JPG?width=80")),
  BasePlayers(number: "#4/31", name: "Spencer Howell", year: "Sophomore", hometown: "Auburn, WA", highSchool: "Seattle Christian", position: "P", height: """ 6'5" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Howell.JPG?width=80")),
  BasePlayers(number: "#5", name: "Blake Wichert", year: "Senior", hometown: "Chehalis, WA", highSchool: "W.F. West", position: "P", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Wichert.JPG?width=80")),
  BasePlayers(number: "#6", name: "Garrett Wong", year: "Sophomore", hometown: "Kent, WA", highSchool: "Kentridge", position: "OF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Wong.JPG?width=80")),
  BasePlayers(number: "#7", name: "Tommy Snyder", year: "Junior", hometown: "Vancouver, WA", highSchool: "Evergreen", position: "P/1B", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Snyder.JPG?width=80")),
  BasePlayers(number: "#8", name: "Jack Hannah", year: "Junior", hometown: "Gig Harbor, WA", highSchool: "Cascade Christian", position: "P", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2019/11/20/Hannah.JPG?width=80")),
  BasePlayers(number: "#9", name: "Alex Boyd", year: "Junior", hometown: "Puyallup, WA", highSchool: "Rogers", position: "OF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Boyd.JPG?width=80")),
  BasePlayers(number: "#10", name: "Kenton Robillard", year: "Senior", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "INF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Robillard.JPG?width=80")),
  BasePlayers(number: "#11", name: "Sean Kauffman", year: "Sophomore", hometown: "Brier, WA", highSchool: "Inglemoor", position: "OF", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Kauffman.JPG?width=80")),
  BasePlayers(number: "#12", name: "Noah Claxton Ward", year: "Freshman", hometown: "University Place, WA", highSchool: "Curtis", position: "OF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Ward.JPG?width=80")),
  BasePlayers(number: "#13", name: "Armond Swanson III", year: "Senior", hometown: "Des Moines, WA", highSchool: "Mt. Rainier", position: "INF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Swanson.JPG?width=80")),
  BasePlayers(number: "#14", name: "Cole Forde", year: "Senior", hometown: "Burien, WA", highSchool: "Seattle Christian", position: "P", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Forde.JPG?width=80")),
  BasePlayers(number: "#15", name: "Ashton Barton", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Rogers", position: "INF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Barton.JPG?width=80")),
  BasePlayers(number: "#16", name: "Rowan Amann", year: "Freshman", hometown: "Ashland, OR", highSchool: "Ashland", position: "INF", height: " ", image: NetworkImage("https://golutes.com/images/2020/11/2/Amann.JPG?width=80")),
  BasePlayers(number: "#17", name: "Joshua Gibson", year: "Sophomore", hometown: "Puyallup, WA", highSchool: "Emerald Ridge", position: "INF/P", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Gibson.JPG?width=80")),
  BasePlayers(number: "#18", name: "Justin Tucker", year: "Junior", hometown: "Renton, WA", highSchool: "Hazen", position: "P", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Tucker.JPG?width=80")),
  BasePlayers(number: "#19", name: "Samuel Flynn", year: "Sophomore", hometown: "Lacey, WA", highSchool: "River Ridge", position: "INF", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Flynn.JPG?width=80")),
  BasePlayers(number: "#20", name: "Alex Gregory", year: "Senior", hometown: "Seattle, WA", highSchool: "Garfield", position: "P", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Gregory.JPG?width=80")),
  BasePlayers(number: "#21", name: "Andy Schmitz", year: "Junior", hometown: "Aurora, OR", highSchool: "North Marion", position: "C/SS", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Schmitz.JPG?width=80")),
  BasePlayers(number: "#22", name: "Trevor Mason", year: "Freshman", hometown: "Mead, WA", highSchool: "Mt. Spokane", position: "C/P", height: """ 6'4" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Mason.JPG?width=80")),
  BasePlayers(number: "#23", name: "Evan Ringler", year: "Junior", hometown: "Henderson, NV", highSchool: "Foothill", position: "P", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Ringler.JPG?width=80")),
  BasePlayers(number: "#24", name: "Jordan Haworth", year: "Junior", hometown: "Gig Harbor, WA", highSchool: "Gig Harbor", position: "INF", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Haworth.JPG?width=80")),
  BasePlayers(number: "#25", name: "Noah Ferguson", year: "Sophomore", hometown: "Salem, OR", highSchool: "South Salem", position: "P/INF", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Ferguson.JPG?width=80")),
  BasePlayers(number: "#26", name: "Cade Hamel", year: "Freshman", hometown: "Puyallup, WA", highSchool: "Emerald Ridge", position: "P/INF", height: """ 5'10" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Hamel.JPG?width=80")),
  BasePlayers(number: "#27", name: "Jonathan Cohen", year: "Freshman", hometown: "Bothell, WA", highSchool: "North Creek", position: "P", height: """ 5'9" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Cohen.JPG?width=80")),
  BasePlayers(number: "#28", name: "Ethan Keintz", year: "Freshman", hometown: "Helena, MT", highSchool: "Capital", position: "P/OF", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Keintz.JPG?width=80")),
  BasePlayers(number: "#29", name: "Anthony Adams", year: "Freshman", hometown: "Auburn, WA", highSchool: "O'Dea", position: "P/OF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Adams.JPG?width=80")),
  BasePlayers(number: "#30", name: "Kyler Gerber", year: "Freshman", hometown: "Kent, WA", highSchool: "Kentridge", position: "INF", height: """ 5'8" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Gerber.JPG?width=80")),
  BasePlayers(number: "#32", name: "Cody Bentley", year: "Junior", hometown: "Puyallup, WA", highSchool: "Emerald Ridge", position: "C", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Bentley.JPG?width=80")),
  BasePlayers(number: "#33", name: "Jude Rowley", year: "Freshman", hometown: "University Place, WA", highSchool: "Curtis", position: "INF", height: """ 6'0" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Rowley.JPG?width=80")),
  BasePlayers(number: "#34", name: "Matt Franceschina", year: "Junior", hometown: "Kent, WA", highSchool: "Kentwood", position: "P/INF", height: """ 6'4" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Franceschina.JPG?width=80")),
  BasePlayers(number: "#35", name: "Gunnar Sebright", year: "Freshman", hometown: "Spokane, WA", highSchool: "North Central", position: "C", height: " ", image: NetworkImage("https://golutes.com/images/2020/11/2/Sebright.JPG?width=80")),
  BasePlayers(number: "#36", name: "Christian Cambridge", year: "Sophomore", hometown: "Eagle River, AK", highSchool: "Chugiak", position: "OF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Cambridge.JPG?width=80")),
  BasePlayers(number: "#37", name: "Cole Trotignon", year: "Sophomore", hometown: "Kent, WA", highSchool: "Kentwood", position: "1B/P", height: """ 6'2" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Trotignon.JPG?width=80")),
  BasePlayers(number: "#44", name: "Nathan Anderson", year: "Senior", hometown: "Graham, WA", highSchool: "Graham Kapowsin", position: "P", height: """ 6'1" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Anderson.JPG?width=80")),
  BasePlayers(number: "#48", name: "Sam Richardson", year: "Freshman", hometown: "Bakersfield, CA", highSchool: "Stockdale", position: "OF", height: " ", image: NetworkImage("https://golutes.com/images/2020/11/2/Richardson.JPG?width=80")),
  BasePlayers(number: "#50", name: "Miles Winter", year: "Freshman", hometown: "Bothell, WA", highSchool: "Bothell", position: "INF", height: """ 5'11" """, image: NetworkImage("https://golutes.com/images/2020/11/2/Winter.JPG?width=80")),


];
