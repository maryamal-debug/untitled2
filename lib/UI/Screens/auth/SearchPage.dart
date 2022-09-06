import 'package:flutter/material.dart';
import 'package:untitled2/UI/Screens/auth/searching.dart';

import 'deliver.dart';
import '../Sections/descaounts.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.only(top: 15),
      child:  ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index){
          return Column(
            children: [
              GestureDetector(
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> serching()));
                },
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.black54,),
                    SizedBox(width: 10,),
                    Container(
                      height: 20,width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white60
                      ),
                      child: Text("Search for stores or item",style: TextStyle(color: Colors.black54,fontSize: 15),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              GestureDetector(
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> delv()));
                },
                child: Container(
                  height: 120,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.cyan),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("Image/delevatboy.png",height: 90,),
                      SizedBox(width: 15,),
                      Container(
                          child:Expanded(child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order Anything",style: TextStyle(color: Colors.white,fontSize: 20),),
                              Text("Lorem Ipsum has been  the industry's standard dummy text ",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ],
                          ),)


                      ),
                      SizedBox(width: 70,),
                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                    ],
                  ),

                ),
              ),

              GestureDetector(
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> desc()));
                },
                child:Typs("Image/market.jpeg","خصومات السعادة","سعادتك تكمل ويانة مع خصومات تصل الى 50% حتى الساعة 7",28),
              ),
              Typs("Image/hamburgere.jpeg","وجبات شرقية","كباب،مندي دولمة وقوزي ",10),
              Typs("Image/card.jpeg","كاش باك","استرجع رصيد على طلباتتك من متاجر مختارة واستخدمهم على",50),
              Typs("Image/descaount.jpg","خصومات السعادة","سعادتك تكمل ويانة مع خصومات تصل الى 50% حتى الساعة 7",13),
              Typs("Image/hamburgere.jpeg","خصومات اسبوعية","سعادتك تكمل ويانة مع خصومات تصل الى 50% حتى الساعة 7",13),
              Typs("Image/market.jpeg","خصومات اسبوعية","سعادتك تكمل ويانة مع خصومات تصل الى 50% حتى الساعة 7",13),
              Typs("Image/card.jpeg","كاش باك","استرجع رصيد على طلباتتك من متاجر مختارة واستخدمهم على",50),


            ],
          );
        },

      )),

    );
  }
Container Typs(String image,String title,String desc ,int stors){
    return Container(
      child: Padding(padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 110,width: 150,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          SizedBox(width: 15,),
          Container(
            child:
            Expanded(child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.black),),
                SizedBox(height: 7,),
                Text(desc,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black45),),
                SizedBox(height: 10,),
                Text(" $stors :stors",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.cyan),),
              ],
            ) ,)

          )
        ],
      ) ,
      )


    );
}
}
