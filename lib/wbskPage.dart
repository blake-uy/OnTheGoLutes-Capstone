import 'package:flutter/material.dart';
import 'wbskScheduleScrap.dart';

class WBSKPage extends StatefulWidget {
  @override
  _SliverAppBarWithTabs createState() => _SliverAppBarWithTabs();
}

class _SliverAppBarWithTabs extends State<WBSKPage>
    with SingleTickerProviderStateMixin {
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
            collapsedHeight: 57,

            //snap: true,
            //floating: true,
            expandedHeight: 175.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              //   title: Text('BASEBALL', style: TextStyle(fontSize: 25.0,)),
              background: Image.asset('images/wbsk.jpg', fit: BoxFit.cover),
            ),

            bottom: TabBar(
              labelColor: Colors.white,
              //labelPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              unselectedLabelColor: Colors.white,
              // indicatorSize: TabBarIndicatorSize.label,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                // color: Colors.white.withOpacity(0.8),
                color: Colors.black,
              ),
              isScrollable: true,
              tabs: [
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("SCHEDULE",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("ROSTER",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("COACHES",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("STATISTICS",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("RECRUITS",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
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

                // Center(child: Text("TAB ONE")),
                Container(
                    color: Colors.black,
                    child: Center(
                        child: Text("Data Coming Soon",
                            style: TextStyle(color: Colors.white)))),
                Container(
                    color: Colors.black,
                    child: Center(
                        child: Text("Data Coming Soon",
                            style: TextStyle(color: Colors.white)))),
                Container(
                    color: Colors.black,
                    child: Center(
                        child: Text("Data Coming Soon",
                            style: TextStyle(color: Colors.white)))),
                Container(
                    color: Colors.black,
                    child: Center(
                        child: Text("Data Coming Soon",
                            style: TextStyle(color: Colors.white)))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
