import 'package:flutter/material.dart';
import 'package:untitled2/UI/Screens/Resturant/resturant.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  String stor ='';
  bool checkvalue =true;
  bool checkvalue2 =true;
  int number=0;
  TextEditingController word = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Padding(padding: EdgeInsets.only(left: 10,right: 10),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context,index){
            return  Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 400,
                  width: MediaQuery.of( context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Image/hamburgere.jpeg"),
                          fit:BoxFit.cover
                      )

                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,


                    children: [
                      Padding(padding: EdgeInsets.only(left:10)),
                      Text( "بركر علي باريس",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                      Padding(padding: EdgeInsets.all(10)),
                      Text( "طعم البركر الاوربي الذي لا يقاوم لحم غنم عراقي خالص",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.grey),),
                      SizedBox(height: 10,),
                      Padding(padding: EdgeInsets.only(left:  10)),
                      Text( "د.ع 13.000",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.green),),

                    ],
                  ),

                ),
                SizedBox(height: 15,),
                Container(
                  height:2 ,
                  width: MediaQuery.of( context).size.width,
                  color: Colors.grey,

                ),
                RadioListTile(title: Text("مطبوخ جيدا"),
                    value: "coocked food", groupValue:stor , onChanged:  (val){

                      setState(() {
                        stor="$val";

                      });

                    }
                ),
                RadioListTile(title: Text("نصف مطبوخ"),
                    value: "coocked eate", groupValue:stor , onChanged:  (val){

                      setState(() {
                        stor="$val";

                      });

                    }
                ),
                RadioListTile(title: Text("جوسي"),
                    value: "cooking way", groupValue:stor , onChanged:  (val){

                      setState(() {
                        stor="$val";

                      });

                    }
                ),
                Container(
                  height:2 ,
                  width: MediaQuery.of( context).size.width,
                  color: Colors.grey,

                ),

                RadioListTile(title: Text("عادي"),
                    value: "not spysi", groupValue:stor , onChanged:  (val){

                      setState(() {
                        stor="$val";

                      });

                    }
                ),
                RadioListTile(title: Text(" حار"),
                    value: " spysi", groupValue:stor , onChanged:  (val){

                      setState(() {
                        stor="$val";

                      });

                    }
                ),

                SizedBox(height: 15,),
                Container(
                  height:2 ,
                  width: MediaQuery.of( context).size.width,
                  color: Colors.grey,

                ),

                CheckboxListTile(title: Text("مايونيز"),
                    value:checkvalue  , onChanged:(vale)
                    {
                      setState(() {
                        checkvalue=vale!;


                      });
                    }
                ),


                CheckboxListTile(title: Text("كاتشب"),
                    value:checkvalue2   , onChanged:(vale)
                    {
                      setState(() {

                        checkvalue2=vale!;



                      });
                    }
                ),
                SizedBox(height: 20,),
                Container(
                  height:2 ,
                  width: MediaQuery.of( context).size.width,
                  color: Colors.grey,
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {


                        });
                      },
                      child: Icon(Icons.minimize),
                    ),
                    Text("$number"),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          number+=1;

                        });
                      },
                      child: Icon(Icons.add),
                    ),


                  ],),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 80,
                  width: MediaQuery.of( context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black26,width: 2,),
                  ),
                  padding: EdgeInsets.only(left: 30,top: 20),child:  Text("اكتب ملاحضتك هنا",style: TextStyle(fontSize: 20,color: Colors.grey.withOpacity( 0.4)),),

                ),

                SizedBox(height: 5,),
   Container(
                    height: 55,
                    margin: EdgeInsets.only(top: 15),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueAccent,boxShadow: [BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 2,
                        color: Colors.grey,
                        offset:Offset (0,5)
                    )]),
                      child:  ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: (){},
                        child:
                        GestureDetector(
                            onTap: (){

                              Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> rest()));
                            },
                            child:Text("طلب",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ),



                      ),




                ),










              ],
            );
          },

        ) ,
        )



    );
  }
}