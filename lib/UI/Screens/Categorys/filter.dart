import 'package:flutter/material.dart';

import '../auth/listver.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title:Text("الفلتر",style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,

        elevation: 0,
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child:ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index){
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("ترتيب حسب",style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 140,
                color: Colors.white,
                child: Expanded(child: ListView.builder(
                  itemCount:1 ,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SortBy("Image/img_3.png","تتقييم"),
                        SortBy("Image/img_2.png","وقت التوصيل"),
                        SortBy("Image/img_1.png","شائع"),
                        SortBy("Image/img.png","موصى به"),
                      ],
                    );
                  },
                ),
                ),
              ),
              Container(
                height: 0.5,width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.3),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("مسح",style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.normal,color: Colors.cyan,fontFamily:"Inconsolata"),) ,
                  Text("تصنيفات سريعة",style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,
                ],
              ),
              SizedBox(height: 5,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(5),
                      child:Container(
                        height: 30,width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.cyan.withOpacity(0.6),),
                        child:Center(
                          child: Text("عروض",style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                        ),

                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5),
                      child:Container(
                        height: 30,width: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.cyan.withOpacity(0.6),),
                        child:Center(
                          child: Text("توصيل مجاني",style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                        ),

                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5),
                      child:Container(
                        height: 30,width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.cyan.withOpacity(0.6),),
                        child:Center(
                          child: Text("جديد",style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                        ),

                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5),
                      child:Container(
                        height: 30,width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.cyan.withOpacity(0.6),),
                        child:Center(
                          child: Text("توفير",style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                        ),

                      ),
                    ),
                  ],
                ) ,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(5),
                      child:Container(
                        height: 30,width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.cyan.withOpacity(0.6),),
                        child:Center(
                          child: Text("راقي",style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                        ),

                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5),
                      child:Container(
                        height: 30,width: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.cyan.withOpacity(0.6),),
                        child:Center(
                          child: Text("متوسط المدى",style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                        ),

                      ),
                    ),
                  ],
                ) ,
              ),
              SizedBox(height: 15,),
              Container(
                height: 0.5,width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.3),
              ),
              Padding(padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("الانواع",style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,
                  ],

                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  typs("Image/pasta.jpeg","ايطالي"),
                  typs("Image/BOR.jpeg","التتجزئة"),
                  typs("Image/BORGER.jpeg","برغر"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  typs("Image/PIZ.jpeg","بيتزا"),
                  typs("Image/ICE.jpeg","بوظه"),
                  typs("Image/MARCET.jpeg","بقالة"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  typs("Image/DELV.jpeg","تجهيزاتت"),
                  typs("Image/SHAWRMA.jpeg","تركي"),
                  typs("Image/HEADPHONS.jpeg","تقنيات"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  typs("Image/FLOW.jpeg","زهور"),
                  typs("Image/CHECK.jpeg","دجاج"),
                  typs("Image/PAI.jpeg","حلويات"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  typs("Image/MET.jpeg","ستيك"),
                  typs("Image/FRO.jpeg","سلطات"),
                  typs("Image/MASH.jpeg","سوري"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  typs("Image/HOTDOG.jpeg","عالمي"),
                  typs("Image/PAS.jpeg","صحي"),
                  typs("Image/SHARQY.jpeg","شرقي"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  typs("Image/RAIS.jpeg","عصاىر"),
                  typs("Image/MASH.jpeg","عربي"),
                  typs("Image/JOIS.jpeg","عراقي"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  typs("Image/EGG.jpeg","فطور"),
                  typs("Image/FINGER.jpeg","فاست فود"),
                  typs("Image/ITEM.jpeg","عناية"),
                ],
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.all(5),
                child:GestureDetector(
                    onTap: (){

                      Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> vert()));
                    },
                    child:
                    Padding(padding: EdgeInsets.all(10),
                      child: Container(
                        height: 40,width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.cyan.withOpacity(0.9999),),
                        child:Center(
                          child: Text("تتصفية النتائج",style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                        ),

                      ),
                    )
                ),
              ),

            ],
          );
        },
      ) ,
      ),

    );
  }
  Container SortBy(String icons , String typeName){
    return Container(
      height:90,width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.3),),
            child: Image.asset(icons,),
          ),
          SizedBox(height: 5,),
          Text(typeName,style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold,color: Colors.black38,fontFamily:"Inconsolata"),) ,

        ],
      ),
    );
  }
  Container typs(String image , String name){
    return Container(
      child: Column(
        children: [
          Image.asset(image,height: 100,width: 100,),
          SizedBox(height: 0,),
          Text(name,style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,

        ],
      ),
    );
  }
}
