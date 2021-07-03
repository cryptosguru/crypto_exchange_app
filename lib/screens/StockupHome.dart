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
  List<Widget> _pages = [
    TopGainersPage(),
    TopLosersPage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('StockUp'),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.arrow_up_circle),
                label: "Top Gainers"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.arrow_down_circle),
                label: "Top Losers"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: "Search"),
          ],
        ),
        tabBuilder: (BuildContext context, index) {
          return _pages[index];
        },
      ),
    );
  }
}

class TopGainersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Top Gainers Page"));
  }
}

class TopLosersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Top Losers Page"));
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Search Page"));
  }
}
