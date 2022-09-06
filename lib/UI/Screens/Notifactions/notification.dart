import 'package:flutter/material.dart';

import '../auth/listver.dart';

class noti extends StatefulWidget {
  const noti({Key? key}) : super(key: key);

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [

          GestureDetector(
            onTap: (){

              Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> vert()));
            },
            child:
                Icon(Icons.close,size: 30,color: Colors.black,),
              ),


        ],
        title:Text("اشعارات",style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.normal,color: Colors.black),) ,

        elevation: 0,
      ),
    );
  }

}
