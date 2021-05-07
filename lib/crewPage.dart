import 'package:flutter/material.dart';
import 'crewScheduleScrap.dart';

class CrewPlayers
{
  CrewPlayers({this.name, this.year, this.hometown, this.highSchool, this.image});
  final String name;
  final String year;
  final String hometown;
  final String highSchool;
  final NetworkImage image;
}

List<CrewPlayers> crewplayers = <CrewPlayers>[
  CrewPlayers(name: "Hannah Beach", year: "Senior", hometown: "Rosalia, WA", highSchool: "Rosalia HS", image: NetworkImage('https://golutes.com/images/2021/1/26/beach.JPG?width=80')),
  CrewPlayers(name: "Harper Bolz-Weber", year: "Senior", hometown: "Denver, CO", highSchool: "East HS", image: NetworkImage('https://golutes.com/images/2021/1/26/bolz_weber.JPG?width=80')),
  CrewPlayers(name: "Fani Del Toro", year: "Freshman", hometown: "Tacoma, WA", highSchool: "Lyceum of Kirissia", image: NetworkImage('https://golutes.com/images/2021/1/26/Del_Toro.jpg?width=80')),
  CrewPlayers(name: "Jessie Dougherty", year: "Sophomore", hometown: "White Bear, MN", highSchool: "White Bear HS", image: NetworkImage('https://golutes.com/images/2021/1/26/dougherty.JPG?width=80')),
  CrewPlayers(name: "Mallory Drye", year: "Freshman", hometown: "Langley, WA", highSchool: "South Whidbey HS", image: NetworkImage('https://golutes.com/images/2021/1/26/drye.JPG?width=80')),
  CrewPlayers(name: "Stacy Duran-Gurrero", year: "Junior", hometown: "Las Vegas, NV", highSchool: "Las Vegas Academy", image: NetworkImage('https://golutes.com/images/2021/1/26/duran.JPG?width=80')),
  CrewPlayers(name: "Brooke Faubion", year: "Junior", hometown: "Monroe, WA", highSchool: "Monroe Monitor", image: NetworkImage('https://golutes.com/images/2021/1/26/faubion.JPG?width=80')),
  CrewPlayers(name: "Corrie Grieves", year: "Sophomore", hometown: "Spokane, WA", highSchool: "Mead Senior HS", image: NetworkImage('https://golutes.com/images/2021/1/26/grieves.JPG?width=80')),
  CrewPlayers(name: "Elizabeth Horner", year: "Junior", hometown: "Spokane, WA", highSchool: "Mt.Spokane HS", image: NetworkImage('https://golutes.com/images/2021/1/26/horner.JPG?width=80')),
  CrewPlayers(name: "Julianna Johnson", year: "Freshman", hometown: "White Bear, MN", highSchool: "White Bear HS", image: NetworkImage('https://golutes.com/images/2021/1/26/johnson.JPG?width=80')),
  CrewPlayers(name: "Adriana Martinez", year: "Freshman", hometown: "Spanaway, WA", highSchool: "Bethel HS", image: NetworkImage('https://golutes.com/images/2021/1/26/martinez.JPG?width=80')),
  CrewPlayers(name: "Emily Metzler", year: "Junior", hometown: "Port Angeles, WA", highSchool: "Port Angeles HS", image: NetworkImage('https://golutes.com/images/2021/1/26/metzler.JPG?width=80')),
  CrewPlayers(name: "Molly Miller", year: "Freshman", hometown: "The Woodlands, TX", highSchool: "Woodlands College", image: NetworkImage('https://golutes.com/images/2021/1/26/miller.JPG?width=80')),
  CrewPlayers(name: "Kate Millett", year: "Sophomore", hometown: "Snohomish, WA", highSchool: "Glacier Peak HS", image: NetworkImage('https://golutes.com/images/2021/1/26/millett.JPG?width=80')),
  CrewPlayers(name: "Maggie Nieberger", year: "Sophomore", hometown: "Erie, CO", highSchool: "Niwot HS", image: NetworkImage('https://golutes.com/images/2021/1/26/nieberger.JPG?width=80')),
  CrewPlayers(name: "Anna Norman-Wikner", year: "Senior", hometown: "Iowa City, IO", highSchool: "Iowa City HS", image: NetworkImage('https://golutes.com/images/2021/1/26/norman_werner.JPG?width=80')),
  CrewPlayers(name: "Elena Oliver", year: "Freshman", hometown: "Auburn, WA", highSchool: "Auburn Mountainview HS", image: NetworkImage('https://golutes.com/images/2021/1/26/oliver.JPG?width=80')),
  CrewPlayers(name: "Jasneet Sandhu", year: "Freshman", hometown: "Auburn, WA", highSchool: "Auburn Mountainview HS", image: NetworkImage('https://golutes.com/images/2021/1/26/Sandu.jpg?width=80')),
  CrewPlayers(name: "HLillian Scully", year: "Freshman", hometown: "Anchorage, AK", highSchool: "AJ Dimond HS", image: NetworkImage('https://golutes.com/images/2021/1/26/scully.JPG?width=80')),
  CrewPlayers(name: "Allison Sheflo", year: "Junior", hometown: "Issaquah, WA", highSchool: "Liberty HS", image: NetworkImage('https://golutes.com/images/2021/1/26/sheflo.JPG?width=80')),
  CrewPlayers(name: "Ali Smith", year: "Senior", hometown: "Crested Butte, CO", highSchool: "Crested Butte HS", image: NetworkImage('https://golutes.com/images/2021/1/26/smith.JPG?width=80')),
  CrewPlayers(name: "Carleigh Templin", year: "Freshman", hometown: "Tacoma, WA", highSchool: "Tacoma Science Institute", image: NetworkImage('https://golutes.com/images/2021/1/26/templin.JPG?width=80')),
  CrewPlayers(name: "Caitlyn Vialpando", year: "Freshman", hometown: "Arvada, CO", highSchool: "Pomona HS", image: NetworkImage('https://golutes.com/images/2021/1/26/vialpando.JPG?width=80')),
];


class CrewPage extends StatefulWidget
{
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<CrewPage> with SingleTickerProviderStateMixin {
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
              background: Image.asset('images/crew2.jfif', fit: BoxFit.cover),
            ),

            bottom: TabBar(
              labelColor: Colors.white,
              //labelPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              unselectedLabelColor: Colors.white,
              // indicatorSize: TabBarIndicatorSize.label,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                color: Colors.black,
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
                        child: Text("ROSTER", style: TextStyle(fontWeight: FontWeight.bold)),
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
                            color: Colors.black,
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
                                  color: Colors.white, fontSize: 19.5),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              //dateAndTime[index],
                              months[index] + " " + dayNumOnly[index] + "  @ " + timeOnly[index] + timeLabels[index],
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.white),
                            ),
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
                        itemCount: crewplayers.length,
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
                                            image: crewplayers[index].image,
                                          )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Center(child: Column(
                                        children: <Widget>[
                                          Center(child:
                                          Text(crewplayers[index].name, style: TextStyle(color: Colors.white, fontSize: 25.0,), textAlign: TextAlign.center,)),
                                          Text(crewplayers[index].year + " / " + crewplayers[index].hometown,
                                              style: TextStyle(fontSize: 17.0, color: Colors.white ), textAlign: TextAlign.center),
                                          Text(crewplayers[index].highSchool, style: TextStyle(fontSize: 16.0, color: Colors.white), textAlign: TextAlign.center,),
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
