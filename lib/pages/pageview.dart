import 'package:flutter/material.dart';

class PagesView extends StatefulWidget {
  const PagesView({Key? key}) : super(key: key);

  @override
  _PagesViewState createState() => _PagesViewState();
}

class _PagesViewState extends State<PagesView> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        title: Text("Page View"),
      ),
      body: PageView(
        //physics: NeverScrollableScrollPhysics(),
       controller: _pageController,
        onPageChanged: (index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
        children: [
          Container(
            color: Colors.purpleAccent,
            child: Text("Page1"),
          ),
          Container(
            color: Colors.blueAccent,
            child: Text("Page2"),
          ),
          Container(
            color: Colors.amberAccent,
            child: Text("Page3"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.blueGrey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.animateToPage(_selectedIndex,
              duration: const Duration(milliseconds:5 ), curve: Curves.fastOutSlowIn);
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home_outlined),label:"Home" ),
          BottomNavigationBarItem(icon: const Icon(Icons.business),label:"Search" ),
          BottomNavigationBarItem(icon: const Icon(Icons.search),label:"" ),

        ],
      ),
    );
  }
}
