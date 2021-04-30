import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:url_launcher/url_launcher.dart';

class Post extends StatefulWidget
{
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post>
{
  List<String> title = <String>[];
  List<String> post = <String>[];
  List<String> link = <String>[];

  //////////
  // WSOC //
  //////////
  List<String> wsocSchedule = <String>[];

  void _getDataFromWeb() async {
    // Get data from the inserted link
    final response = await http.get('https://arprogramming.blogspot.com/');
    final wsocSchedulePage = await http.get('https://golutes.com/sports/womens-soccer/schedule');

    // Store the data from the link in document
    dom.Document document = parser.parse(response.body);
    dom.Document wsocSchedule = parser.parse(wsocSchedulePage.body);

    final wsocScheduleOpponent = wsocSchedule.getElementsByClassName('sidearm-schedule-game-opponent-name');
    link.addAll(wsocScheduleOpponent.map( (element) =>
    element.getElementsByTagName("a")[0].attributes['aria-label']));

    ///////////////////
    // FOR THE TITLE //
    ///////////////////
    // "div" class 
    final elements = document.getElementsByClassName('entry-header blog-entry-header');

    // <a> tag, represents "a link" in HTML
    // title = elements.map( (element) =>
    //   element.getElementsByTagName("a") [0].innerHtml).toList();

    ///////////////////////////
    // For the Post Content //
    //////////////////////////
    // "div" class
    final content = document.getElementsByClassName('entry content');

    // <p> tag, represents "a paragraph of text" in HTML
    // post = content.map( (element) =>
    //   element.getElementsByTagName("p") [0].innerHtml).toList();

    ///////////////////
    // FOR THE LINK //
    //////////////////
    // "div" class
    final link2 = document.getElementsByClassName('entry-title');

    // <a> tag, represents "a link" in HTML
    // link = link2.map( (element) =>
    // element.getElementsByTagName("a") [0].attributes['href']).toList();

    //setState( () {
      title.addAll(elements.map( (element) =>
      element.getElementsByTagName("a") [0].innerHtml));


      post.addAll(content.map( (element) =>
      element.getElementsByTagName("p") [0].innerHtml));

      link.addAll(link2.map( (element) =>
      element.getElementsByTagName("a") [0].attributes['href']));
    //});

    // print("TITLE: ");
    // print(title.toString());

  }

  @override
  void initState()
  {
    _getDataFromWeb();
  }

  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: wsocSchedule.length == 0? Text("NO DATA", style: TextStyle(color: Colors.white)) : ListView.builder(
          //itemCount: post.length,
          itemCount: wsocSchedule.length,
          itemBuilder: (context, index)
          {
            return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 375),
                child: SlideAnimation(
                  child: FadeInAnimation(
                    child: GestureDetector(
                      onTap: () async {
                        dynamic url = link[index];
                        if (await canLaunch(url))
                          launch(url);
                        else
                          {
                            print("ERROR");
                          }
                      },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          color: Colors.purple,
                          child: Column(
                            children: <Widget> [

                              ///////////////////
                              // FOR THE TITLE //
                              //////////////////
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(wsocSchedule[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 20,
                                ),),
                              ),

                              SizedBox(height: 15),

                              ///////////////////////////
                              // FOR THE POST CONTENT //
                              //////////////////////////
                              Text(
                                post[index],
                                style: TextStyle(
                                  color: Colors.white,
                                )
                              )
                            ]
                          )

                        )
                      ),
                    )
                  ))
                )
            );
          },
        )
      ),
    );
  }
}