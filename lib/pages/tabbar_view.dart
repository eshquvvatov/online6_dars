
import 'package:flutter/material.dart';
class Tabbar_View extends StatefulWidget {
  const Tabbar_View({Key? key}) : super(key: key);

  @override
  _Tabbar_ViewState createState() => _Tabbar_ViewState();
}

class _Tabbar_ViewState extends State<Tabbar_View> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: const TabBarView(
          children: [Text("hello"),
           // Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
