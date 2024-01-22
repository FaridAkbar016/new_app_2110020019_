import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.menu),
        title: Text('Heading'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              listMenu(
                img: 'assets/car.png',
                text: 'Otomotive',
                navigator: '/otomotive',
              ),
              // SizedBox(width: 20),
              listMenu(
                img: 'assets/football.png',
                text: 'Sport',
                navigator: '/sport',
              ),
            ],
          ),
          SizedBox(height: 50),
          listMenu(
            img: 'assets/profile.png',
            text: 'Profile',
            navigator: '/profile',
          ),
        ],
      ),
    );
  }
}

class listMenu extends StatelessWidget {
  listMenu({this.img, this.text, this.navigator});
  final String img;
  final String text;
  final String navigator;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, navigator);
      },
      child: Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Image.asset(
              img,
              width: 100,
              height: 100,
            ),
            // SizedBox(height: 20),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
