import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// START OF STATEFUL WIDGET
// class Instagram extends StatefulWidget
// {
//   @override
//   InstagramState createState() => InstagramState();
// }
//
// class InstagramState extends State<Instagram>
// {
//   @override
//   void initState()
//   {
//     super.initState();
//
//     if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
//   }
//
//   // @override
//   // Widget build (BuildContext context)
//   // {
//   //   return WebView(
//   //     initialUrl: 'https://www.instagram.com/golutes/',
//   //   );
//   // }
//
//
//   @override
//   Widget build (BuildContext context)
//   {
//     Completer<WebViewController> _controller = Completer<WebViewController>();
//
//     return Scaffold(
//         body: WebView(
//           initialUrl: 'https://twitter.com/golutes',
//           onWebViewCreated: (WebViewController webViewController) {
//             _controller.complete(webViewController);
//       },
//     ),);
//
//
//       // url: 'https://www.instagram.com/golutes/',
//
//
//
//
//   }
// }
// END OF STATEFUL WIDGET

// START OF STATELESS WIDGET
class Instagram extends StatelessWidget
{

  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(''),
      // ),
      body: WebView(
        initialUrl: 'https://twitter.com/golutes',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      )

    );
  }
}

// END OF STATELESS WIDGET