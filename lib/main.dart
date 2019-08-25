import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override //覆盖父类的方法
  Widget build(BuildContext context) {
    // 这个方法返回的值得类型是个widget
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('GeekChen'), // 顶部 文字内容
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Navigation',
                onPressed: () => debugPrint('search button is pressed'),
              ),
            ],
            elevation: 4.0, //  顶部的阴影效果
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              // Icon(Icons.change_history, size: 128.0, color: Colors.deepPurple),
              // Icon(Icons.directions_bike, size: 128.0, color: Colors.redAccent),
              LayoutDemo(),
              ViewDemo(),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo()),
    );
  }
}
