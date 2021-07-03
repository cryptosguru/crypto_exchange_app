import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class StockupHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Force Portrait since the app isn't designed for rotation
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return CupertinoApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'StockUp',
      home: MyHomePage(),
    );
  }
}

// Main Screen
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('StockUp'),
      ),
      child: Center(child: Text("StockUp")),
    );
  }
}
