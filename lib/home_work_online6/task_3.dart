import 'package:flutter/material.dart';

class HomeTask3 extends StatefulWidget {
  const HomeTask3({Key? key}) : super(key: key);

  @override
  _HomeTask3State createState() => _HomeTask3State();
}

class _HomeTask3State extends State<HomeTask3>
    with SingleTickerProviderStateMixin {


  int _salectindext = 0;
  PageController _pageController = PageController();
@override
void initState(){
  super.initState();
  _pageController=PageController();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeTask3"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey,
      body: PageView(
      controller: _pageController,
        onPageChanged: (index){
        setState(() {
          _salectindext=index;
        });
        },
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Text("Home Page"),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text("Message Page"),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text("Vedio Page"),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text("Notification Page"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (int index) {
          setState(() {
            _salectindext = index;

          _pageController.animateToPage(
              _salectindext, duration: Duration(milliseconds: 500),
              curve: Curves.easeIn);
          });
        },

        //fixedColor: Colors.white,
        selectedItemColor: Colors.yellow,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.red),
        currentIndex: _salectindext,
        type:BottomNavigationBarType.fixed ,
        unselectedItemColor: Colors.blueGrey,
        backgroundColor: Colors.pink,enableFeedback:true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, ), label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, ), label: "Message"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video, ),
              label: "Video"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, ),
              label: "Notification"
          ),
        ],
      ),
    );
  }
}
