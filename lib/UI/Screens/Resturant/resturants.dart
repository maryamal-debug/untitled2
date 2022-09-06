import 'package:flutter/material.dart';

import '../auth/listver.dart';

class resturantspage extends StatefulWidget {
  const resturantspage({Key? key}) : super(key: key);

  @override
  State<resturantspage> createState() => _resturantspageState();
}

class _resturantspageState extends State<resturantspage> {
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
            Icon(Icons.arrow_forward_ios,size: 30,color: Colors.black,),
          ),


        ],
        title:Text("مطاعم",style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.normal,color: Colors.black),) ,

        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index){
          return Column(
            children: [
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
                        typs("Image/PIZ.jpeg","بيتزا"),
                        typs("Image/ICE.jpeg","بوظه"),
                        typs("Image/SHARQY.jpeg","شرقي"),
                        typs("Image/RAIS.jpeg","عصاىر"),
                        typs("Image/MASH.jpeg","عربي"),
                        typs("Image/JOIS.jpeg","عراقي"),
                        typs("Image/EGG.jpeg","فطور"),
                        typs("Image/FINGER.jpeg","فاست فود"),
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
              SizedBox(width: 7,),
              Sale("Image/mndy.jpeg",30,"علي باريس","دجاج",5,30),
              SizedBox(width: 7,),
              Sale("Image/كنافة.jpeg",40,"بابا كنافة","حلويات",9,35),
              SizedBox(width: 7,),
              Sale("Image/Desert.jpeg",25,"ثري برذرس","سلطة",8,50),
              SizedBox(width: 7,),
              Sale("Image/sha.jpeg",50,"عروس لبنان","لحم",6,40),
              SizedBox(width: 7,),
              Sale("Image/bur.jpeg",35,"بديز بركر","بركر",4,10),
              SizedBox(width: 7,),
              Sale("Image/cheken.jpeg",25,"هاندريدز","دجاج",7,20),
              SizedBox(width: 7,),
              Sale("Image/sha.jpeg",60,"مستتر شاورما","لحم",8,25),
              SizedBox(width: 7,),
              Sale("Image/شرقي.jpeg",15,"قصرالكرم","لحوم",10,20),
            ],
          );
        },

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
