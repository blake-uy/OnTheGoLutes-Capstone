import 'package:flutter/material.dart';
import 'mswimScheduleScrap.dart';

class MSwimPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<MSwimPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/mswim.jpg', fit: BoxFit.cover),
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
                        itemCount: mswimPlayers.length,
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
                                            image: mswimPlayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(mswimPlayers[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),

                                          Text(mswimPlayers[index].position,
                                              style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center),
                                          Text(mswimPlayers[index].year + " / " + mswimPlayers[index].hometown + " / " + mswimPlayers[index].highSchool, style: TextStyle(fontSize: 14, color: Colors.white), textAlign: TextAlign.center,),
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
                        itemCount: mswimCoaches.length,
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
                                            image: mswimCoaches[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Text(mswimCoaches[index].name, style: TextStyle(fontSize: 26.0, color: Colors.white), textAlign: TextAlign.center,),
                                          Text(mswimCoaches[index].title, style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),

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

class MSwimPlayers
{
  MSwimPlayers({this.name, this.position, this.year, this.hometown, this.highSchool, this.image});
  final String name;
  final String position;
  final String year;
  final String hometown;
  final String highSchool;
  final NetworkImage image;
}

List<MSwimPlayers> mswimPlayers = <MSwimPlayers>[
  MSwimPlayers(name: "Carson Braddoch", year: "Freshman", hometown: "Puyallup, WA", highSchool: "Puyallup", position: "Free/Breast/Fly", image: NetworkImage('https://golutes.com/images/2020/11/13/Braddoch.JPG?width=80')),
  MSwimPlayers(name: "Nicolas Celebrado", year: "Junior", hometown: "Renton, WA", highSchool: "Kentridge", position: "Breast/IM", image: NetworkImage('https://golutes.com/images/2019/10/9/Celebrado.jpg?width=80')),
  MSwimPlayers(name: "Christiaan Chandler", year: "Senior", hometown: "Las Vegas, NV", highSchool: "Green Valley", position: "Free/Breast", image: NetworkImage("https://golutes.com/images/2020/11/13/Chandler.JPG?width=80")),
  MSwimPlayers(name: "Henri Coronado-Volta", year: "Sophomore", hometown: "Seattle, WA", highSchool: "Bishop Blanchet", position: "Free/Back/Fly", image: NetworkImage("https://golutes.com/images/2019/10/9/Coronado_Volt.jpg?width=80")),
  MSwimPlayers(name: "Charles Cutter", year: "Junior", hometown: "Wenatchee, WA", highSchool: "Wenatchee", position: "Free/Back/Fly", image: NetworkImage("https://golutes.com/images/2020/11/13/Charlie_Cutter.JPG?width=80")),
  MSwimPlayers(name: "Christian Cutter", year: "Freshman", hometown: "Wenatchee, WA", highSchool: "Wenatchee", position: "Free/Breast/IM", image: NetworkImage("https://golutes.com/images/2020/11/13/Christian_Cutter.JPG?width=80")),
  MSwimPlayers(name: "Phillip Hecksel ", year: "Senior", hometown: "Hood River, OR", highSchool: "Hood River Valley", position: "Free/Fly", image: NetworkImage("https://golutes.com/images/2020/11/13/Hecksel.jpg?width=80")),
  MSwimPlayers(name: "Seth Koivisto", year: "Senior", hometown: "Dupont, WA", highSchool: "Steilacoom", position: "Breast/Fly/IM", image: NetworkImage("https://golutes.com/images/2020/11/13/Koivisto.JPG?width=80")),
  MSwimPlayers(name: "Mike Smith", year: "Senior", hometown: "Renton, WA", highSchool: "Kentridge", position: "Breast", image: NetworkImage("https://golutes.com/images/2020/11/13/Smith.JPG?width=80")),
  MSwimPlayers(name: "Devin Stanley", year: "Freshman", hometown: "Maple Valley, WA", highSchool: "Tahoma", position: "Free/Breast/IM", image: NetworkImage("https://golutes.com/images/2019/12/6/Lute_Headshot.jpg?width=80")),
  MSwimPlayers(name: "Peter Thompson", year: "Junior", hometown: "Eugene, OR", highSchool: "Churchill", position: "Breast/Free", image: NetworkImage("https://golutes.com/images/2020/11/13/Thompson.JPG?width=80")),
  MSwimPlayers(name: "Jared Toschi", year: "Senior", hometown: "Kent, WA", highSchool: "Auburn Mountainview", position: "Free/Back", image: NetworkImage("https://golutes.com/images/2020/11/13/Toschi.JPG?width=80")),
  MSwimPlayers(name: "Ethan Trieu", year: "Senior", hometown: "Fontana, CA", highSchool: "Los Osos", position: "Free/Back/IM", image: NetworkImage("https://golutes.com/images/2020/11/13/Trieu.JPG?width=80")),

];

class MSwimCoaches
{
  MSwimCoaches({this.name, this.title, this.image});
  final String name;
  final String title;
  final NetworkImage image;
}

List<MSwimCoaches> mswimCoaches = <MSwimCoaches>[
  MSwimCoaches(name: "Matt Sellman", title: "Head Coach", image: NetworkImage('https://golutes.com/images/2018/4/24//sellman.jpg?width=80')),
];