import 'package:flutter/material.dart';
import 'package:online6_dars/pages/dialog_page.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MaterialButton(height: 50,
              shape: StadiumBorder(),
              minWidth: 250,
              onPressed: () {
              Navigator.of(context).pushNamed(DialogPage.id);
              },
              child: Text("Dialog"),
              color: Colors.blueAccent,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
