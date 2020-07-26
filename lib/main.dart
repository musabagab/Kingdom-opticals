import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kingdom optical',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'نظارت المملكة',
            style: TextStyle(fontSize: 40),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: WebView(
          initialUrl: 'http://kingdomoptical.byethost14.com/?i=1',
          javascriptMode: JavascriptMode.unrestricted,
        )),
      ),
    );
  }
}
