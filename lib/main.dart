import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Demo'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Tab 1')),
              Center(child: Text('Tab 2')),
              Center(
                child: Text('Tab 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
