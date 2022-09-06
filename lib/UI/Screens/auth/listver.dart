import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/UI/Screens/Resturant/resturant.dart';
import 'package:untitled2/UI/Screens/Resturant/resturants.dart';

import '../Register/LOGPage.dart';
import '../Sections/SOTRESPAE.dart';
import '../Sections/Totersfrish.dart';
import '../Sections/descaounts.dart';
import '../Categorys/filter.dart';
import '../Sections/marketpae.dart';
import '../Notifactions/notification.dart';

class vert extends StatefulWidget {
  const vert({Key? key}) : super(key: key);

  @override
  State<vert> createState() => _vertState();
}

class _vertState extends State<vert> {
  final List<String> listImages = [

    'Image/descounts.jpg',
    'Image/offers.jpg',
    'Image/POINTS.jpg',
    'Image/meet.jpeg',
    'Image/kfc.jpeg',
    'Image/coffee.jpeg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,

      actions: [
        Padding(padding: EdgeInsets.only(right: 10),
          child: Container(
            height: 70,width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("توصيل الى",style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_drop_down_outlined,size: 25,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text("بغداد ، العراق",style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,color: Colors.black,fontFamily:"Inconsolata"),) ,
                  ],
                )
              ],
            ),
          ) ,
        )
      ],
      leading: Container(
        height: 70,width: 150,
        child: Row(
          children: [
            GestureDetector(
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> noti()));
              },
              child:Icon(Icons.notifications_none,size: 23,color: Colors.black45,),
            ),
            SizedBox(width: 7,),
            GestureDetector(
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Filter()));
              },
              child:Icon(Icons.filter_alt_outlined,size: 23,color: Colors.cyan,),
            ),

          ],
        ),
      ) ,


      elevation: 1,

    ),

      body: ListView.builder(
          itemCount: 1,
          itemBuilder:(context,index) {
            return Padding(padding: EdgeInsets.all(10),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(" سجل الدخول باستخدام تتطبيق توترز واستمتع بمزايا حصرية ",style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),),
                    SizedBox(width: 5,),

                    GestureDetector(
                      onTap: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login()));
                      },
                      child: Icon(Icons.login,size: 22,color: Colors.cyan,),

                    ),


                  ],
                ),
                SizedBox(height: 10,),
                CarouselImages(
                  scaleFactor: 0.7,
                  listImages: listImages,
                  height: 300.0,
                  borderRadius: 30.0,
                  cachedNetworkImage: true,
                  verticalAlignment: Alignment.bottomCenter,
                  onTap: (index) {
                    print('Tapped on page $index');
                  },
                ),
                SizedBox(height: 10,),
                Padding(padding: EdgeInsets.all(5),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        GestureDetector(
                          onTap: (){

                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> resturantspage()));

                          },
                          child:Typs(
                              "Image/burgericon.jpeg","مطاعم"
                          ),
                        ),
                        GestureDetector(
                          onTap: (){

                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> stors()));

                          },
                          child:Typs("Image/backsicon.jpeg","متاجر"),
                        ),
                        GestureDetector(
                          onTap: (){

                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> market()));

                          },
                          child:Typs("Image/foodicon.jpeg","البقالة"),),
                      ]
                  ) ,
                ),
                Padding(padding: EdgeInsets.all(10),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        GestureDetector(
                          onTap: (){

                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login()));

                          },
                          child:Typs("Image/wallet.jpeg","اضف رصيد"),
                        ),
                        GestureDetector(
                          onTap: (){

                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login()));

                          },
                          child:Typs("Image/delevary.jpeg","المندوب"),
                        ),
                        GestureDetector(
                          onTap: (){

                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TOT()));

                          },
                          child:Typs("Image/foodicon.jpeg","توترز فريش"),
                        ),

                      ]
                  ) ,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10 , left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){

                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> desc()));
                              },
                              child: Icon(Icons.arrow_back_ios,size: 15,color: Colors.green,),
                            ),
                            Text("خصومات اسبوعية",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:"Inconsolata"),) ,
                          ],
                        ) ,
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10, left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("احصل على خصم 50% على مطاعم هذا الاسبوع",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54,fontFamily:"Inconsolata"),) ,
                          ],
                        ) ,
                      ),
                    ],
                  ),
                ),
                Container(
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
                      GestureDetector(
                      onTap: (){

                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> rest()));
                      },
                      child:Sale("Image/mndy.jpeg",30,"علي باريس","دجاج",5,30),
                      ),

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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10 , left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){

                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> resturantspage()));
                              },
                              child: Icon(Icons.arrow_back_ios,size: 15,color: Colors.green,),
                            ),
                            Text("شنو رايك بوجبة اليوم مجانية؟",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:"Inconsolata"),) ,
                          ],
                        ) ,
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10, left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("استتبدل نقاطك هسة واحصل على وجبة مجانية",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54,fontFamily:"Inconsolata"),) ,
                          ],
                        ) ,
                      ),
                    ],
                  ),
                ),

                Container(
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10 , left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){

                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> resturantspage()));
                              },
                              child: Icon(Icons.arrow_back_ios,size: 15,color: Colors.green,),
                            ),
                            Text("البعيد صار قريب",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:"Inconsolata"),) ,
                          ],
                        ) ,
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10, left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("مطاعمك المفضلة صارت اقرب اليك",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54,fontFamily:"Inconsolata"),) ,
                          ],
                        ) ,
                      ),
                    ],
                  ),
                ),

                Container(
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
                          Sale("Image/cheken.jpeg",39-29,"هاندريدز","دجاج",7,20),
                          SizedBox(width: 7,),
                          Sale("Image/كنافة.jpeg",39-29,"بابا كنافة","حلويات",9,35),
                          SizedBox(width: 7,),
                          Sale("Image/Desert.jpeg",39-29,"ثري برذرس","سلطة",8,50),
                          SizedBox(width: 7,),
                          Sale("Image/sha.jpeg",39-29,"عروس لبنان","لحم",6,40),
                          SizedBox(width: 7,),
                          Sale("Image/bur.jpeg",39-29,"بديز بركر","بركر",4,10),
                          SizedBox(width: 7,),
                          Sale("Image/mndy.jpeg",30,"علي باريس","دجاج",5,30),
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10 , left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){

                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> resturantspage()));
                              },
                              child: Icon(Icons.arrow_back_ios,size: 15,color: Colors.green,),
                            ),
                            Text("جديد على توترز",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:"Inconsolata"),) ,
                          ],
                        ) ,
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10, left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("جرب المطاعم الجديدة المميزة مع مجموعة وجبات رائعة",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54,fontFamily:"Inconsolata"),) ,
                          ],
                        ) ,
                      ),
                    ],
                  ),
                ),

                Container(
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
                          Sale("Image/bur.jpeg",39-29,"بديز بركر","بركر",4,10),
                          SizedBox(width: 7,),
                          Sale("Image/كنافة.jpeg",39-29,"بابا كنافة","حلويات",9,35),
                          SizedBox(width: 7,),
                          Sale("Image/Desert.jpeg",39-29,"ثري برذرس","سلطة",8,50),
                          SizedBox(width: 7,),
                          Sale("Image/sha.jpeg",39-29,"عروس لبنان","لحم",6,40),
                          SizedBox(width: 7,),
                          Sale("Image/mndy.jpeg",30,"علي باريس","دجاج",5,30),
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10 , left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){

                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> market()));
                              },
                              child: Icon(Icons.arrow_back_ios,size: 15,color: Colors.green,),
                            ),
                            Text("قسم البقالة",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:"Inconsolata"),) ,
                          ],
                        ) ,
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10, left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("يمكنك ان جد هنا ما تحتاجه من البقالة والادوية والمستزمات",
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54,fontFamily:"Inconsolata"),)

                          ],
                        ) ,
                      ),
                    ],
                  ),
                ),

                Container(
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
                          Sale("Image/ماركت.jpeg",40,"توترز فريش","بقالة",6,40),
                          SizedBox(width: 7,),
                          Sale("Image/منظفات.jpeg",20,"كيريا ماركت","منظفات",8,50),
                          SizedBox(width: 7,),
                          Sale("Image/فواكه.jpeg",39," الفجل الاحمر","خضروات",9,39),
                          SizedBox(width: 7,),
                          Sale("Image/meet4.jpeg",30,"قصابة سيد الاغنام","لحوم",6,40),
                          SizedBox(width: 7,),
                          Sale("Image/منظفات.jpeg",20,"كيريا ماركت","منظفات",8,50),
                          SizedBox(width: 7,),
                          Sale("Image/فواكه.jpeg",39," الفجل الاحمر","خضروات",9,39),
                          SizedBox(width: 7,),
                          Sale("Image/meet4.jpeg",30,"قصابة سيد الاغنام","لحوم",6,40),
                          SizedBox(width: 7,),
                          Sale("Image/ماركت.jpeg",40,"توترز فريش","بقالة",6,40),
                        ],
                      );
                    },
                  ),
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.white,
                  child: Expanded(child: ListView.builder(
                    itemCount:3 ,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 2,bottom: 2)),
                          typs("Image/pasta.jpeg","ايطالي"),
                          typs("Image/BOR.jpeg","التتجزئة"),
                          typs("Image/PIZ.jpeg","بيتزا"),
                          typs("Image/ICE.jpeg","بوظه"),
                          typs("Image/MARCET.jpeg","بقالة"),
                          typs("Image/DELV.jpeg","تجهيزاتت"),
                          typs("Image/SHAWRMA.jpeg","تركي"),
                          typs("Image/HEADPHONS.jpeg","تقنيات"),
                          typs("Image/SHARQY.jpeg","شرقي"),
                          typs("Image/RAIS.jpeg","عصاىر"),
                          typs("Image/MASH.jpeg","عربي"),
                          typs("Image/JOIS.jpeg","عراقي"),
                          typs("Image/EGG.jpeg","فطور"),
                          typs("Image/FINGER.jpeg","فاست فود"),
                          typs("Image/ITEM.jpeg","عناية"),
                          typs("Image/FLOW.jpeg","زهور"),
                          typs("Image/CHECK.jpeg","دجاج"),
                          typs("Image/PAI.jpeg","حلويات"),
                          typs("Image/MET.jpeg","ستيك"),
                          typs("Image/FRO.jpeg","سلطات"),
                          typs("Image/MASH.jpeg","سوري"),
                          typs("Image/HOTDOG.jpeg","عالمي"),
                          typs("Image/PAS.jpeg","صحي"),
                          typs("Image/BORGER.jpeg","برغر"),
                        ],
                      );
                    },
                  ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("قريب",style: TextStyle(fontSize: 35,
                        fontWeight: FontWeight.w400,color: Colors.black,fontFamily:"Inconsolata"),) ,
                  ],
                ),
                SizedBox(height: 10,),
                Sale("Image/sha.jpeg",39-29,"عروس لبنان","لحم",6,40),
                Sale("Image/كنافة.jpeg",39-29,"بابا كنافة","حلويات",9,35),
                Sale("Image/Desert.jpeg",39-29,"ثري برذرس","سلطة",8,50),
                Sale("Image/sha.jpeg",39-29,"عروس لبنان","لحم",6,40),
                Sale("Image/bur.jpeg",39-29,"بديز بركر","بركر",4,10),
                Sale("Image/cheken.jpeg",39-29,"هاندريدز","دجاج",7,20),
                Sale("Image/sha.jpeg",39-29,"مستتر شاورما","لحم",8,25),
                Sale("Image/شرقي.jpeg",39-29,"قصرالكرم","لحوم",10,20),
                Sale("Image/mndy.jpeg",30,"علي باريس","دجاج",5,30),
              ],
            ),
            );


          }
      ),



    );
  }
  Container Typs(String Icon,String type){
    return Container(
      height: 80,width:100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 10,
              offset: Offset(0,4),color: Colors.grey
          )]),
      child: Column(
        children: [
          Image.asset(Icon,height: 50,width: 50,) ,

          SizedBox(height: 5,),
          Text(type,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black),),
        ],
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


  Container typs(String image , String name){
    return Container(
      child: Column(
        children: [
          Image.asset(image,height: 70,width: 70,),
          SizedBox(height: 0,),
          Text(name,style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,

        ],
      ),
    );
  }
}
