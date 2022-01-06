import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  static const String id = "grid_view_page";

  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List avatars = [
    "assets/images/boy1.jpg",
        "assets/images/boy2.jpg",
        "assets/images/boy3.jpg",
        "assets/images/boy4.jpg",
        "assets/images/boy5.jpg",
        "assets/images/boy6.jpg",
        "assets/images/boy7.jpg",
        "assets/images/boy9.jpg",
        "assets/images/boy10.jpg",
        "assets/images/boy11.jpg",
        "assets/images/boy12.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey.shade800,
        title: Text("Grid View"),),
      body: GridView.builder(padding: EdgeInsets.all(20),
        itemCount: avatars.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15,
            childAspectRatio: 7 / 10,
            mainAxisSpacing: 15,
            crossAxisCount: 4),
        itemBuilder: (context, index) {
          return elementOfTeble(avatars[index], "user${index+1}", "");
        },
      ),
    );
  }

  Widget elementOfTeble(String image, String name, String title) {
    return Card(
      elevation: 20,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(child: Image(image: AssetImage(image),
            fit: BoxFit.cover,
            height: 60,
            width: 60,
          ),
            borderRadius: BorderRadius.circular(60),
          ),
          SizedBox(height: 10,),
          Text(name, style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
