import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online6_dars/pages/home_page.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);
  static const  id = "home_page";

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  int _selectedDestination=0;
  void display() {
    if (Platform.isAndroid) {
      _androidDialog();
    }
    if (Platform.isIOS) {
      _iosDialog();
    }
  }

  void _androidDialog() {
    showDialog(
      context: context,
      builder: (BuildContext) {
        return AlertDialog(
          title: const Text("Log out"),
          content: const Text("Aru you sure you woant log out"),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text("cancel"),
            ),
            TextButton(onPressed: () {}, child: const Text("Confirm")),
          ],
        );
      },
    );
  }

  void _iosDialog() {
    showDialog(
      context: context,
      builder: (BuildContext) {
        return CupertinoAlertDialog(
          title: const Text("Log out"),
          content: const Text("Are you sure you want to log out"),
          actions: [
            CupertinoDialogAction(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: const Text("Confirm"),
              onPressed: () {},
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Online 6-dars"),
        leading: Builder(
          builder: (context) {
            // context yozmasa chiqmaydi nega savol berish
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.more_horiz));
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              height: 50,
              shape: const StadiumBorder(),
              minWidth: 250,
              onPressed: _androidDialog,
              child: const Text("Android Dialog"),
              color: Colors.blueAccent,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: _iosDialog,
              shape: const StadiumBorder(),
              child: const Text(
                "IOS Dialog",
                style:  TextStyle(fontSize: 20, color: Colors.white),
              ),
              color: Colors.blueAccent,
              height: 50,
              minWidth: 250,
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: display,
              shape: const StadiumBorder(),
              child: const Text(
                "Platform",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              color: Colors.blueAccent,
              height: 50,
              minWidth: 250,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPictureSize:  Size.fromRadius(38),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              arrowColor: Colors.yellow,
              currentAccountPicture: CircleAvatar(
                backgroundImage:  NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNYxw0C-qP7Dp0aaqN2ai9MYxqOJyPkAoKkQ&usqp=CAU"),
              ),
              accountName: Text(
                "Ravshan",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("ravshanbekeshquvvatov@gmail.com"),
            ),
            const Divider(
              color: Colors.black,
              height: 20,
              thickness: 2,
            ),
            ListTile(

              selected: _selectedDestination == 0,
              onTap: () => selectDestination(0),

              leading: const Icon(Icons.my_library_add),
              title: const Text(
                "My File",
                style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(

              selected: _selectedDestination == 1,
              onTap: () => selectDestination(1),
              leading: const Icon(Icons.people_alt),
              title: const Text(
                "Share with me",
                style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {},
              focusColor: Colors.yellow,
              leading: const Icon(Icons.star),
              title: const Text(
                "Starred",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.lock_clock),
              title: const Text(
                "Recent",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.offline_pin),
              title: const Text(
                "Offline",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.upload_sharp),
              title: const Text(
                "Uploads",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(onTap: (){},
              focusColor: Colors.yellow,
              leading: const Icon(Icons.backup_sharp),
              title: const Text(
                "Backups",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(onTap: (){},
              focusColor: Colors.yellow,
              leading: const Icon(Icons.delete),
              title: const Text(
                "Trash",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 20,
              thickness: 2,
            ),
            ListTile(onTap: (){},
              focusColor: Colors.yellow,
              leading: const Icon(Icons.settings),
              title: const Text(
                "Setting & account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

void selectDestination(int index) {
  setState(() {
    _selectedDestination = index;
  });
}
}
