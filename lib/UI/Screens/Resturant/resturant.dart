import 'package:flutter/material.dart';

import 'BurgaratyPage.dart';
import 'food.dart';
import '../auth/listver.dart';

class rest extends StatefulWidget {
  const rest({Key? key}) : super(key: key);

  @override
  State<rest> createState() => _restState();
}

class _restState extends State<rest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(10),
        child:  ListView.builder(
          itemCount: 1,
          itemBuilder: (context,index){
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Container(
              width: MediaQuery.of(context).size.width,
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
                                  image: AssetImage("Image/burger1.jpeg"),fit: BoxFit.cover,),
                                    borderRadius: BorderRadius.circular(15)),
                              )),
                          Positioned(
                            top: 20,
                            left: 10,

                            child:  Icon(Icons.favorite_border,size: 30,color: Colors.white,),),
                          Positioned(
                            top: 20,
                            right: 10,

                            child:  GestureDetector(
                              onTap: (){

                                Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> vert()));
                              },
                              child:Icon(Icons.arrow_forward_ios_outlined,size: 30,color: Colors.white,),),
                            ),
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
                                        Text("36-46",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.bold),),
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


                ],
              ),
            ),

                SizedBox(height: 30,),

                Text("علي باريس",style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 5,),
               Text("تشكيله مميزة من الذ الاطباق والاكلات السريعه",style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.normal,color: Colors.black45),),
                SizedBox(height: 10,),
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
                                  Text(" خصم %25",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.w400,color: Colors.orange.shade900,),),
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
                                  Text("9",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.w400),),
                                  Icon(Icons.star,size: 15,color: Colors.cyan,),
                                ],
                              ),
                          ),

                      ),


                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width: 15,),
                    Container(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star,size: 22,color: Colors.green,),
                              Icon(Icons.star,size: 22,color: Colors.green,),
                              Icon(Icons.star,size: 22,color: Colors.green,),
                              Icon(Icons.star,size: 22,color: Colors.green,),
                              Icon(Icons.star,size: 22,color: Colors.grey,),
                            ],
                          ),
                          Text("مرتكز على 750 التقييمات",style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,color: Colors.black45),),
                        ],
                      ),
                    ),
                    Text("4.8",style: TextStyle(fontSize:50,
                        fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Adam",style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(width: 10,),
                    Icon(Icons.star,size: 22,color: Colors.green,),
                    SizedBox(width: 5,),
                    Icon(Icons.star,size: 22,color: Colors.green,),
                    SizedBox(width: 5,),
                    Icon(Icons.star,size: 22,color: Colors.green,),
                    SizedBox(width: 5,),
                    Icon(Icons.star,size: 22,color: Colors.green,),
                    SizedBox(width: 5,),
                    Icon(Icons.star,size: 22,color: Colors.grey,),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("رهيييب حبيته كلش والتوصيل سريع ",style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.normal,color: Colors.black45),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("read more",style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.normal,color: Colors.green),),
                  ],
                ),
                SizedBox(height: 5,),
                Text("شائع",style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 5,),
                Container(
                  height: 320,width: MediaQuery.of(context).size.width,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.white,
                    child: Expanded(child: ListView.builder(
                      itemCount:3 ,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.all(2)),
                            Sale("Image/mndy.jpeg",30,"علي باريس","دجاج",5,30),
                            SizedBox(width: 7,),
                            Sale("Image/كنافة.jpeg",39-29,"بابا كنافة","حلويات",9,35),
                            SizedBox(width: 7,),
                            Sale("Image/Desert.jpeg",39-29,"ثري برذرس","سلطة",8,50),
                            SizedBox(width: 7,),
                            Sale("Image/sha.jpeg",39-29,"عروس لبنان","لحم",6,40),
                            SizedBox(width: 7,),
                            Sale("Image/bur.jpeg",39-29,"بديز بركر","بركر",4,10),
                            SizedBox(width: 7,),
                            Sale("Image/cheken.jpeg",39-29,"هاندريدز","دجاج",7,20),
                            SizedBox(width: 7,),
                            Sale("Image/sha.jpeg",39-29,"مستتر شاورما","لحم",8,25),
                            SizedBox(width: 7,),
                            Sale("Image/شرقي.jpeg",39-29,"قصرالكرم","لحوم",10,20),
                          ],
                        );
                      },
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Text("البركر",style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 5,),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> page3()));
                  },
                  child:   Sale("Image/burger1.jpeg",39-29,"بديز بركر","بركر",4,10),

                ),
                GestureDetector(
                  onTap: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Burgaraty()));
                  },
                  child: Sale("Image/hamburgere.jpeg",30,"بركراتي","بركر",4,10),

                ),

                Sale("Image/hamburgere.jpeg",29,"بديز بركر","بركر",4,10),
                Sale("Image/hamburgere.jpeg",25,"بديز بركر","بركر",4,10),
                Sale("Image/bur.jpeg",15,"بديز بركر","بركر",4,10),

                SizedBox(height: 10,),
                Typs("Image/burger1.jpeg","بركر","بركر،بالجبن دولمة وقوزي ",7000),
                Typs("Image/hamburgere.jpeg","بركر","بركر،مندي دولمة وقوزي ",5000),
                Typs("Image/burger1.jpeg","بركر","بركر،مندي دولمة وقوزي ",6000),
                Typs("Image/hamburgere.jpeg","بركر","بركر،مندي دولمة وقوزي ",1000),
                Typs("Image/burger1.jpeg","بركر","بركر،مندي دولمة وقوزي ",7000),
                Typs("Image/hamburgere.jpeg","بركر","بركر،مندي دولمة وقوزي ",6500),

              ],
            );


          },

        ),

      )

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

  Container Typs(String image,String title,String desc ,int cost){
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
                      Text(" $cost :د.ع",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.cyan),),
                    ],
                  ) ,)

              )
            ],
          ) ,
        )


    );
  }
}
