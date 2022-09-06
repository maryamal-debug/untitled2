import 'package:flutter/material.dart';

import '../auth/listver.dart';
class TOT extends StatefulWidget {
  const TOT({Key? key}) : super(key: key);

  @override
  State<TOT> createState() => _TOTState();
}

class _TOTState extends State<TOT> {
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
              Padding(padding: EdgeInsets.all(10),
                child:Icon(Icons.arrow_forward_ios_outlined,size: 30,color: Colors.black,),
              )
          ),


        ],
        title:Text("توترز فريش",style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,

        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("!مسواگك على مزاجك",style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.normal,color: Colors.grey,),
              ),
              SizedBox(height: 30,),
              Sale("Image/veg.jpeg",29,"توترز فريش - الكرادة","بقالة",5,30),
            ],
          );
        },

      ),

    );
  }
  Padding Sale(String image ,int time ,String title,String food,int rate ,int decont){
    return Padding(padding: EdgeInsets.all(10),
      child: Container(
        height: 280,width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(padding: EdgeInsets.only(left: 0),
              child: Container(
                height: 180,
                width: 355,
                child:
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(

                        child:  Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(image: DecorationImage(
                            image: AssetImage(image),fit: BoxFit.cover,),
                              borderRadius: BorderRadius.circular(15)),
                        )),
                    Positioned(
                      top: 20,
                      left: 10,

                      child:  Icon(Icons.favorite_border,size: 30,color: Colors.white,),),
                    Positioned(
                        top: 150,
                        left: 30,
                        child: Container(
                            height: 45,width: 75,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 1,color: Colors.grey.withOpacity(0.3),offset: Offset(0,2)
                            )]),
                            child:Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("$time",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3,),
                                  Text("دقائق",style: TextStyle(fontFamily: "Inconsolata",fontSize: 13,fontWeight: FontWeight.normal,color: Colors.grey),),
                                ],
                              ),
                            )

                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(title,style: TextStyle(fontFamily: "Inconsolata",fontSize: 20,fontWeight: FontWeight.w400),),
            Text("$food  . \$\$",style: TextStyle(fontFamily: "Inconsolata",fontSize: 13,fontWeight: FontWeight.normal),),
            Padding(padding: EdgeInsets.all(10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 20,width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blueAccent.withOpacity(0.1)),
                      child:Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("اكسب نقاط",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.w400,color: Colors.blue.shade500,),),
                              Icon(Icons.add_box_outlined,size: 15,color: Colors.blue.shade500,),
                            ],
                          )
                      )

                  ),
                  SizedBox(width: 5,),
                  Container(
                      height: 20,width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.orange.withOpacity(0.1)),
                      child:Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(" خصم$decont%",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.w400,color: Colors.orange.shade900,),),
                              Icon(Icons.bookmark_border,size: 15,color: Colors.orange.shade900,),
                            ],
                          )
                      )

                  ),
                  SizedBox(width: 5,),
                  Container(
                      height: 20,width: 65,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey.withOpacity(0.2)),
                      child:Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("$rate",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.w400),),
                              Icon(Icons.star,size: 15,color: Colors.cyan,),
                            ],
                          )
                      )

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
