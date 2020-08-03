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
      title: 'Sudanease Soug',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'السوق السوداني',
            style: TextStyle(fontSize: 40),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: WebView(
          initialUrl: 'http://sogelectroni.byethost7.com/index.html',
          javascriptMode: JavascriptMode.unrestricted,
        )),
      ),
    );
  }
}
