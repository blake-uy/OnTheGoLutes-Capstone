import 'package:flutter/material.dart';
import 'wswimScheduleScrap.dart';

class WSwimPlayers
{
  WSwimPlayers({this.name, this.year, this.hometown, this.highSchool, this.event, this.image});
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final String event;
  final NetworkImage image;
}

List<WSwimPlayers> wswimplayers = <WSwimPlayers>[
  WSwimPlayers(name: "Allie Burke", year: "Junior", hometown: "Hood River, OR", highSchool: "Hood River Valley HS", event: "Free/Fly", image: NetworkImage('https://golutes.com/images/2020/11/13/Burke.JPG?width=80')),
  WSwimPlayers(name: "Makenzie Chan-Orcutt", year: "Sophomore", hometown: "Oregon City, OR", highSchool: "Oregon City HS", event: "Breast", image: NetworkImage("https://golutes.com/images/2019/10/9/Makenzie_Chan_Orcutt.jpg?width=80")),
  WSwimPlayers(name: "Sidney Chan-Orcutt", year: "Sophomore", hometown: "Oregon City, OR", highSchool: "Oregon City HS", event: "Free/IM", image: NetworkImage("https://golutes.com/images/2019/10/9/Sidney_Chan_Orcutt.jpg?width=80")),
  WSwimPlayers(name: "Bridget Duven", year: "Junior", hometown: "Black Diamond, WA", highSchool: "Tahoma HS", event: "Free/Fly", image: NetworkImage("https://golutes.com/images/2020/11/13/Duven.JPG?width=80")),
  WSwimPlayers(name: "Annika Eisele", year: "Freshman", hometown: "Cosmopolis, WA", highSchool: "Aberdeen HS", event: "Back/Fly", image: NetworkImage("https://golutes.com/images/2020/11/13/Eisele.JPG?width=80")),
  WSwimPlayers(name: "Bailey Hamilton", year: "Junior", hometown: "Modesto, CA", highSchool: "Beyery HS", event: "Free/Fly", image: NetworkImage("https://golutes.com/images/2020/11/13/Hamilton.jpg?width=80")),
  WSwimPlayers(name: "Reina Kim", year: "Sophomore", hometown: "Honolulu, HI", highSchool: "Kaiser", event: "Breast/IM", image: NetworkImage("https://golutes.com/images/2020/11/13/Kim.JPG?width=80")),
  WSwimPlayers(name: "Kiyomi Kishaba", year: "Senior", hometown: "San Diego, CA", highSchool: "Westview HS", event: "Back/IM", image: NetworkImage("https://golutes.com/images/2020/11/13/Kishaba.jpg?width=80")),
  WSwimPlayers(name: "Maya Lovre", year: "Sophomore", hometown: "Portland, OR", highSchool: "Grant HS", event: "Free/Back", image: NetworkImage("https://golutes.com/images/2019/10/9/Lovre.jpg?width=80")),
  WSwimPlayers(name: "Tabitha Messineo", year: "Junior", hometown: "Puyallup, WA", highSchool: "Puyallup HS", event: "Free/Breast/IM", image: NetworkImage("https://golutes.com/images/2018/10/9/Messineo.jpg?width=80")),
  WSwimPlayers(name: "Jenna Muller", year: "Senior", hometown: "Moraga, CA", highSchool: "Campolindo HS", event: "Free/Back", image: NetworkImage("https://golutes.com/images/2020/11/13/Muller.JPG?width=80")),
  WSwimPlayers(name: "Jessica Ordaz", year: "Freshman", hometown: "Los Angeles, CA", highSchool: "Alliance Science & Tech", event: "Free/Fly/IM", image: NetworkImage("https://golutes.com/images/2020/11/13/Ordaz.JPG?width=80")),
  WSwimPlayers(name: "Tori Oshiro", year: "Junior", hometown: "Kealakekua, HI", highSchool: "Konawaena HS", event: "Free/Breast/IM", image: NetworkImage("https://golutes.com/images/2020/11/13/Oshiro.JPG?width=80")),
  WSwimPlayers(name: "Grace Ralstin", year: "Freshman", hometown: "Auburn, WA", highSchool: "Todd Beamer HS", event: "Back/Fly", image: NetworkImage("https://golutes.com/images/2020/11/13/G_Ralstin.JPG?width=80")),
  WSwimPlayers(name: "Maddie Ralstin", year: "Freshman", hometown: "Auburn, WA", highSchool: "Todd Beamer HS", event: "Free/Breast/IM", image: NetworkImage("https://golutes.com/images/2020/11/13/M_Ralstin.JPG?width=80")),
  WSwimPlayers(name: "Tess Ritcey", year: "Junior", hometown: "Mercer Island, WA", highSchool: "Mercer Island HS", event: "Free/Back/Breast", image: NetworkImage("https://golutes.com/images/2019/10/9/Ritcey.jpg?width=80")),
  WSwimPlayers(name: "Olivia Ross", year: "Junior", hometown: "Tacoma, WA", highSchool: "Bellarmine Prep HS", event: "Breast/Fly/IM", image: NetworkImage("https://golutes.com/images/2019/10/9/Ross.jpg?width=80")),
  WSwimPlayers(name: "Alex Shannon", year: "Senior", hometown: "Anchorage, AL", highSchool: "South Anchorage HS", event: "Back/IM", image: NetworkImage("https://golutes.com/images/2019/10/9/Shannon.jpg?width=80")),
  WSwimPlayers(name: "Isabella Valles", year: "Freshman", hometown: "El Paso, TX", highSchool: "El Paso HS", event: "Breast/IM", image: NetworkImage("https://golutes.com/images/2020/11/13/Valles.JPG?width=80")),
  WSwimPlayers(name: "Hannah Vanheyningen", year: "Sophomore", hometown: "Wenatchee WA", highSchool: "Wenatchee HS", event: "Free", image: NetworkImage("https://golutes.com/images/2020/11/13/VanHeyningen.JPG?width=80")),
  WSwimPlayers(name: "Malia Wisham", year: "Freshman", hometown: "Duvall, WA", highSchool: "Cedarcrest HS", event: "Free/Breast/IM", image: NetworkImage("https://golutes.com/images/2020/5/6/Malia_Wisham.jpg?width=80")),
];

class WSwimPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<WSwimPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/wswim2.jpg', fit: BoxFit.cover),
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
                        child: Text("SCHEDULE", style: TextStyle(fontWeight: FontWeight.bold)),
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
                                BorderSide(color: Colors.grey, width: 2.0)),
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
                        itemCount: wswimplayers.length,
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
                                            image: wswimplayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Center(child:
                                          Text(wswimplayers[index].name, style: TextStyle(fontSize: 25.0, ), textAlign: TextAlign.center,)),
                                          Text(wswimplayers[index].year + " / " + wswimplayers[index].hometown,
                                              style: TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                                          Text(wswimplayers[index].highSchool, style: TextStyle(fontSize: 19.0, ), textAlign: TextAlign.center,),
                                          Text(wswimplayers[index].event, style: TextStyle(fontSize: 19.0, ), textAlign: TextAlign.center),
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
                      // MATT SELLMAN START
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
                                    "https://golutes.com/images/2018/4/24//sellman.jpg?width=300"),
                                image: NetworkImage(
                                    "https://golutes.com/images/2018/4/24//sellman.jpg?width=300"),
                                height: 200.0),
                            SizedBox(width: 44.0),
                            Column(children: <Widget>[
                              Text("Matt Sellman",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("Head Coach",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("253-535-7370",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text("sellmame@plu.edu",
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
                                  bottom: BorderSide(color: Colors.transparent))),
                          child: Column(children: <Widget>[
                            Text(
                                "About Matt: A PLU Alum who took on the roles of aquatics director and Head Coach for the Lutes back in 2010. Has built the program into a regional powerhouse while earning Northwest Conference Coach of the Year accolades four times and steering the Lutes to three NWC Titles.",
                                style: TextStyle(fontSize: 15.0, color: Colors.black)),
                          ])),
                      // MATT SELLMAN END
                    ])),

                ///////////
                // STATS //
                ///////////
                Center(child: Text("TAB FOUR")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}