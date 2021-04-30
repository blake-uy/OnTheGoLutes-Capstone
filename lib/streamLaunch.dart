import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//////////////////////////
// FOR LIVE STREAM URL //
/////////////////////////
String _url = 'https://portal.stretchinternet.com/plu/#';
Future <void> _launched;

class StreamLaunch extends StatefulWidget
{
  @override
  _StreamLaunch createState() => _StreamLaunch();
}

class _StreamLaunch extends State<StreamLaunch>
{

  Future <void> _launchURL(String url) async
  {
    if (await canLaunch(url))
    {
      await launch(url);
    }

    else
    {
      throw 'COULD NOT LAUNCH $url';
    }
  }

  @override
  Widget build (BuildContext context)
  {
    return null;
  }



}
