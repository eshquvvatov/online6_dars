import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
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
          title: Text("Log out"),
          content: Text("Aru you sure you woant log out"),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text("cancel"),
            ),
            TextButton(onPressed: () {}, child: Text("Confirm")),
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
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            // context yozmasa chiqmaydi nega savol berish
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.more_horiz));
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
              shape: StadiumBorder(),
              minWidth: 250,
              onPressed: _androidDialog,
              child: Text("Android Dialog"),
              color: Colors.blueAccent,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: _iosDialog,
              shape: StadiumBorder(),
              child: Text(
                "IOS Dialog",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              color: Colors.blueAccent,
              height: 50,
              minWidth: 250,
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: display,
              shape: StadiumBorder(),
              child: Text(
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
          children: const [
            UserAccountsDrawerHeader(
                arrowColor: Colors.red,
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                accountName: Text("Ravshan"),
                accountEmail: Text("ravshanbekeshquvvatov@gmail.com"))
          ],
        ),
      ),
    );
  }
}
