import 'package:flutter/material.dart';
class GridViewPage extends StatefulWidget {
  static const String id="grid_view_page";
  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey.shade800,
      title: Text("Grid View"),),
      body: GridView.count(crossAxisCount: 4,
      children: [

      ],
      ),
    );
  }
  Widget elementOfTeble(String image, String name,String title){
    return Card(
      color: Colors.white,
      child: Column(
        children: [

        ],
      ),);

  }
}
