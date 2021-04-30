import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageViews extends StatefulWidget
{
  @override
  _PageViewState createState() => _PageViewState();
}

class _PageViewState extends State<PageViews>
{
  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
       // backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 160.0,
         // leading: Image.asset('images/wsoc.jpg'),
          backgroundColor: Colors.transparent,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
           // titlePadding: const EdgeInsets.all(10),
            background: Image.asset('images/sb.jpg'),
            title: (Text("Women's Soccer", style: TextStyle(fontSize: 30.0))),
            centerTitle: true,
          ),
        ),

        body: PageView(
          //pageSnapping: false,
          children: [
            Container(color: Colors.grey),
            Container(color: Colors.red),
            Container(color: Colors.blue),
           // Image.asset('images/wsoc.jpg', fit: BoxFit.cover),
          ]
        )
      ),
    );
  }
}