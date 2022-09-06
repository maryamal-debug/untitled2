import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.3),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "الطلبات القادمة",
              ),
              Tab(
                text: "طلبات سابقة",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Image(image: AssetImage("Image/coming.jpg"),)
            ),
            Center(
              child: Image(image: AssetImage("Image/Last.jpg"),)
            ),
          ],
        ),
      ),
    );

  }












}
