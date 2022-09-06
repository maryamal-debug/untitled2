import 'package:flutter/material.dart';
import 'package:untitled2/UI/Screens/Resturant/resturant.dart';


class Burgaraty extends StatefulWidget {
  const Burgaraty({Key? key}) : super(key: key);

  @override
  State<Burgaraty> createState() => _BurgaratyState();
}

class _BurgaratyState extends State<Burgaraty> {
  int _count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Center(
              child:  Container(
                height: 150,width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Image/hamburgere.jpeg"),fit: BoxFit.cover)),
                child:
                Stack(
                  clipBehavior: Clip.none,
                  children: [

                    Positioned(
                      top: 20,
                      left: 320,
                      width: 46,
                      height:44,
                      child: Container(
                        height: 500,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        child:GestureDetector(
                          onTap: (){

                            Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> rest()));

                          },
                          child:Icon(Icons.arrow_forward_rounded,color: Colors.black,size: 30,),
                        ),

                      ),),


                    Positioned(
                      top: 130,
                      left: 0,
                      width: MediaQuery.of(context).size.width,
                      child: Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                        child:
                            Padding(padding: EdgeInsets.all(15),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("برجرات",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold ,color: Colors.redAccent),),
                                SizedBox(height: 5,),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Text("جيد جدا",style: TextStyle(fontSize:17,fontWeight: FontWeight.w600 ,color: Colors.black54),),
                                                SizedBox(width: 5,),
                                                Icon(Icons.tag_faces_sharp,color: Colors.black54,),
                                                SizedBox(width: 15,),
                                                Text("سعر التوصيل : 1,500",style: TextStyle(fontSize:17,fontWeight: FontWeight.w600 ,color: Colors.black54),),
                                                SizedBox(width: 5,),
                                                Icon(Icons.motorcycle_outlined,color: Colors.black54,),

                                              ],
                                            ),
                                            Text("د.ع",style: TextStyle(fontSize:17,fontWeight: FontWeight.w600 ,color: Colors.black54),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Text("الحد الادنى للطلب :",style: TextStyle(fontSize:17,fontWeight: FontWeight.w600 ,color: Colors.black54),),
                                            SizedBox(width: 5,),
                                            Text("5000 د.ع",style: TextStyle(fontSize:17,fontWeight: FontWeight.w600 ,color: Colors.black54),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Icon(Icons.monetization_on_outlined,color: Colors.black54,),
                                      SizedBox(width: 129,),
                                      Text("المنصور",style: TextStyle(fontSize:17,fontWeight: FontWeight.w600 ,color: Colors.black54),),
                                      SizedBox(width: 2,),
                                      Icon(Icons.location_on_outlined,color: Colors.black54,),

                                    ],
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("وقت التوصيل المتوقع من نصف ساعة الى ساعة",style: TextStyle(fontSize:17,fontWeight: FontWeight.w600 ,color: Colors.black54),),
                                      SizedBox(width: 5,),
                                      Icon(Icons.monetization_on_outlined,color: Colors.black54,),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text("سندويش فيليه الدجاج",style: TextStyle(fontSize:23,fontWeight: FontWeight.w600 ,color: Colors.redAccent),),
                                SizedBox(height: 40,),
                                Container(
                                  height: 70,width: 400,
                                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(15)),
                                  child:Padding(padding: EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.arrow_upward_sharp,color: Colors.black54,),
                                      Container(
                                        child:
                                        Column(
                                          children: [
                                            Text("اضافات",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ,color: Colors.redAccent),),
                                            SizedBox(height: 5,),
                                            Text("اختياري",style: TextStyle(fontSize:17,fontWeight: FontWeight.normal ,color: Colors.black54),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),),

                                ),
                                SizedBox(height: 18,),
                                Text("تعليمات خاصة",style: TextStyle(fontSize:20,fontWeight: FontWeight.normal ,color: Colors.black54),),
                                SizedBox(height: 2,),
                                Container(
                                  height: 60,width: 400,
                                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(15)),
                                  child:Padding(padding: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.arrow_upward_sharp,color: Colors.black54,),
                                        Container(
                                          child:
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("اذا كان لديك اي ملاحظة او شكوى اصل على",style: TextStyle(fontSize:18,fontWeight: FontWeight.normal ,color: Colors.black54),),
                                                ],
                                              ),

                                        )
                                      ],
                                    ),
                                  ),

                                ),
                                SizedBox(height: 20,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.grey,
                                        child: Icon(Icons.add),

                                        onPressed: _incrementCount,),
                                    Container(
                                      height: 45,width: 160,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(0.2),),
                                      child: Center(
                                        child: Text("${_count}",style: TextStyle(color: Colors.black),),
                                      )
                                    ),
                                     FloatingActionButton(
                                            backgroundColor: Colors.grey,
                                            child: Icon(Icons.remove),
                                            onPressed:_decrementCount ,
                                          ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("6500 د.ع",style: TextStyle(fontSize:20,fontWeight: FontWeight.normal ,color: Colors.redAccent),),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 50,width: 330,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.redAccent,),
                                        child: Center(
                                          child: Text("اضافة الى السلة",style: TextStyle(color: Colors.white),),
                                        )
                                    ),
                                  ],
                                )
                              ],
                            ),

                            ),



                    ),)
                  ],
                ),
              )
            ),


          ],
        ),

    );
  }
  void _incrementCount(){
    setState(() {
      _count++;
    });
  }
  void _decrementCount(){
    if(_count < 1){
      return;
    }
    setState(() {
      _count--;
    });
  }
}
// get overflow => null;
