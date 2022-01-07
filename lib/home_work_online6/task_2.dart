import 'package:flutter/material.dart';

class HomeTask2 extends StatefulWidget {
  const HomeTask2({Key? key}) : super(key: key);

  @override
  _HomeTask2State createState() => _HomeTask2State();
}

class _HomeTask2State extends State<HomeTask2> {
  @override
  People list = People();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        centerTitle: true,
      ),
      body: ListView(
          children: list.people
              .map((e) => task2(
                  image: e.url, name: e.name, message: e.message, time: e.time))
              .toList()),
    );
  }

  Widget task2(
      {required String image,
      required String name,
      required String time,
      required String message}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(image),
                  radius: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            time,
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        message,
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                    ]),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios_sharp),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            alignment: Alignment.centerLeft,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 5,
            thickness: 3,
          )
        ],
      ),
      height: 90,
    );
  }
}

class AboutPeople {
  String url;
  String name;
  String time;
  String message;

  AboutPeople(
      {required this.url,
      required this.name,
      required this.time,
      required this.message});
}

class People {
  List<AboutPeople> people = <AboutPeople>[
    AboutPeople(
        url: "https://vthumb.ykimg.com/054101015E09BD218B6C069AE9E96A8B",
        name: "Holland",
        time: "20:00",
        message: "What do you think Hollan is best futballer"),
    AboutPeople(
        url: "https://vthumb.ykimg.com/054101015E09BD218B6C069AE9E96A8B",
        name: "Holland",
        time: "20:00",
        message: "What do you think Hollan is best futballer"),
    AboutPeople(
        url: "https://vthumb.ykimg.com/054101015E09BD218B6C069AE9E96A8B",
        name: "Holland",
        time: "20:00",
        message: "What do you think Hollan is best futballer"),
    AboutPeople(
        url: "https://vthumb.ykimg.com/054101015E09BD218B6C069AE9E96A8B",
        name: "Holland",
        time: "20:00",
        message: "What do you think Hollan is best futballer"),
    AboutPeople(
        url: "https://vthumb.ykimg.com/054101015E09BD218B6C069AE9E96A8B",
        name: "Holland",
        time: "20:00",
        message: "What do you think Hollan is best futballer"),
    AboutPeople(
        url: "https://vthumb.ykimg.com/054101015E09BD218B6C069AE9E96A8B",
        name: "Holland",
        time: "20:00",
        message: "What do you think Hollan is best futballer"),
    AboutPeople(
        url: "https://vthumb.ykimg.com/054101015E09BD218B6C069AE9E96A8B",
        name: "Holland",
        time: "20:00",
        message: "What do you think Hollan is best futballer"),
    AboutPeople(
        url: "https://vthumb.ykimg.com/054101015E09BD218B6C069AE9E96A8B",
        name: "Holland",
        time: "20:00",
        message: "What do you think Hollan is best futballer"),
  ];
}
