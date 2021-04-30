import 'package:flutter/material.dart';

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
      length: 5,
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
              background: Image.asset('images/bsb2.jpg', fit: BoxFit.cover),
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
                      child: Text("SCHEDULE")
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("ROSTER")
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("COACHES")
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("STATISTICS")
                    )),
                Tab (
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("RECRUITS")
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
                Center(child: Text("Data Coming Soon")),
                Center(child: Text("Data Coming Soon")),
                Center(child: Text("TAB THREE")),
                Center(child: Text("TAB FOUR")),
                Center(child: Text("TAB FIVE")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


//
//
//
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.black,
//       // bottomNavigationBar: DefaultTabController(
//       //   length: 5,
//       //   child: TabBar(
//       //     isScrollable: true,
//       //     unselectedLabelColor: Colors.white.withOpacity(0.3),
//       //     indicatorColor: Colors.amber,
//       //     tabs: [
//       //       Tab(text: "Schedule" ),
//       //       Tab(text: "Roster"),
//       //       Tab(text: "Coaches"),
//       //       Tab(text: "Statistics"),
//       //       Tab(text: "Recruits"),
//       //     ],
//       //   ),
//       //
//       // ),
//       body: CustomScrollView(
//         slivers: <Widget> [
//         SliverAppBar(
//         pinned: true,
//         bottom: TabBar(
//           tabs: [
//             Tab(text: "Schedule"),
//             Tab(text: "Roster"),
//             Tab(text: "Coaches"),
//             Tab(text: "Statistics"),
//             Tab(text: "Recruits"),
//           ],
//           controller: TabController(
//             length: 5,
//           ),
//         ),
//         //backgroundColor: Colors.black,
//         //floating: true,
//         expandedHeight: 250.0,
//         flexibleSpace: FlexibleSpaceBar(
//           collapseMode: CollapseMode.pin,
//           centerTitle: true,
//           title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
//           background: Image.asset('images/bsb2.jpg', fit: BoxFit.cover),
//         ),
//       ),
//           SliverFillRemaining(
//             child: TabBarView(
//               controller: TabController(
//                 length: 5
//               ),
//               children: <Widget> [
//                 Text("Content for Tab 1"),
//                 Text("Content for Tab 2"),
//                 Text("Content for Tab 3"),
//                 Text("Content for Tab 4"),
//                 Text("Content for Tab 5"),
//               ],
//             )
//           )
//
//
//           //
//           // TabBarView(
//           //   children: [
//           //     Icon(Icons.directions_car),
//           //     Icon(Icons.directions_transit),
//           //     Icon(Icons.directions_bike),
//           //     Icon(Icons.directions_car),
//           //
//           //   ]
//           // ),
//
//           // SliverGrid(
//           //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           //     crossAxisCount: 2,
//           //   ),
//           //
//           //   // Build Grid
//           //   delegate: SliverChildBuilderDelegate (
//           //       (BuildContext context, int index)
//           //           {
//           //             return baseballHomePage(features[index]);
//           //             // return Container(
//           //             //  // height: 300.0,
//           //             //     alignment: Alignment.center,
//           //             //             margin: const EdgeInsets.fromLTRB(0, .5, 0, 0),
//           //             //             decoration: BoxDecoration(
//           //             //               color: Colors.black,
//           //             //             ),
//           //             //             padding: const EdgeInsets.all(22),
//           //             //   child: Column(
//           //             //     //mainAxisSize: MainAxisSize.max,
//           //             //     children: <Widget> [
//           //             //       Text("SCHEDULE", style: TextStyle(color: Colors.white),)
//           //             //     ]
//           //             //   )
//           //             // );
//           //           },
//           //     childCount: 4,
//           //   )
//           // ),
//
//           // SliverList (
//           //   delegate: SliverChildBuilderDelegate ( (BuildContext context, int index)
//           //   {
//           //     return Container(
//           //         alignment: Alignment.center,
//           //         margin: const EdgeInsets.fromLTRB(0, .5, 0, 0),
//           //         decoration: BoxDecoration(
//           //           color: Colors.black,
//           //         ),
//           //         padding: const EdgeInsets.all(22),
//           //       child: Column(
//           //         children: <Widget> [
//           //           Text("SCHEDULE", style: TextStyle(color: Colors.white),),
//           //         ]
//           //       )
//           //
//           //     );
//           //
//           //   }, childCount: 4,
//           //
//           // )),
//
//         ],
//     ));
//   }
//
//   List<String> features = ['Schedule', 'Roster', 'Coaches', 'Statistics'];
//
//   Widget baseballHomePage(String title) => Container(
//     // decoration: BoxDecoration(
//     //   image: DecorationImage (image: NetworkImage('https://goboxers.com/images/2020/5/28/NWC_homepage_seize.png'),),
//     //     ),
//     decoration: BoxDecoration(
//      // color: Colors.black,
//       //border: Border.all(
//           //color: Colors.white),
//     ),
//     //color: Colors.black,
//     child: Center(
//       child: Text("$title", style: TextStyle(color: Colors.white, fontSize: 30.0,)),
//     )
//
//   );
// }
//
