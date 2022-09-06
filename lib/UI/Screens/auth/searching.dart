import 'package:flutter/material.dart';

import 'SearchPage.dart';
class serching extends StatefulWidget {
  const serching({Key? key}) : super(key: key);

  @override
  State<serching> createState() => _serchingState();
}

class _serchingState extends State<serching> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.5),
          leading:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.search,color: Colors.black54,),
              SizedBox(width: 10,),
              Container(
                height: 20,width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Colors.white60
                ),
                child: Text("Search for stores or item",style: TextStyle(color: Colors.black54,fontSize: 15),),
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: (){

                Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> Search()));
              },
              child:Icon(Icons.arrow_forward_ios,size: 20,),
            ),
          ],

          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "اصناف",
              ),
              Tab(
                text: "متاجر",
              ),
            ],
          ),
        ),

      ),
    );

  }
}
