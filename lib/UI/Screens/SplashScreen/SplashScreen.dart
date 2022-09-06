import 'package:flutter/material.dart';

import '../BottomNavigationBar/bottopage.dart';


class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async {
    await new Future.delayed(const Duration(seconds: 4));
    Navigator.push(context, MaterialPageRoute(builder: (context) => Navp()));
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("Image/totirsicon.jpeg",),
      ),
    );
  }

}