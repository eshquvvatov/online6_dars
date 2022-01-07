import 'package:flutter/material.dart';

class HomeTask1 extends StatefulWidget {
  const HomeTask1({Key? key}) : super(key: key);

  @override
  _HomeTask1State createState() => _HomeTask1State();
}

class _HomeTask1State extends State<HomeTask1> {
  int _selectedIndext = 0;
  void selectDestination(int index){
    setState(() {
      _selectedIndext=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task One"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue,),
                currentAccountPictureSize: Size.fromRadius(40),
                accountEmail: Text(
                  "ravshanbekeshquvvatov@gmail.com",
                  style: TextStyle(fontSize: 18),
                ),
                accountName: Text(
                  "Ravshanbek",
                  style: TextStyle(fontSize: 18),
                ),
                currentAccountPicture: CircleAvatar(child: Text(
                  "R",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ), backgroundColor: Colors.grey,)
            ),
            ListTile(
              leading: Icon(Icons.home),
              selected: _selectedIndext == 2,
              onTap: () => selectDestination(2),
              title: Text("Home"),
            ),
            ListTile(leading: Icon(Icons.perm_identity_outlined),
              selected: _selectedIndext == 3,
              onTap: () => selectDestination(3),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.people_outline),
              selected: _selectedIndext == 4,
              onTap: () => selectDestination(4),
              title: Text("Aboutus"),
            ),
          ],
        ),
      ),
    );

  }
}