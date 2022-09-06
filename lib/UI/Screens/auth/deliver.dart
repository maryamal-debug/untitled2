import 'package:flutter/material.dart';

import '../Register/LOGPage.dart';

class delv extends StatefulWidget {
  const delv({Key? key}) : super(key: key);

  @override
  State<delv> createState() => _delvState();
}

class _delvState extends State<delv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,

        title:  Text("نوصل اي شي يسع على متن دراجة نارية",style: TextStyle(fontSize: 15,
            fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,

        elevation: 1,

      ),
      body: Padding(padding: EdgeInsets.only(top: 30,left: 15,right: 15),
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(":اطلب مندوب ل ",style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,

              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login()));
                },
                child: Container(
                  height: 100,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.2)
                  ),
                  child:
                  Padding(padding: EdgeInsets.only(left: 20,right: 10),
                    child:Row(
                      children: [
                        Icon(Icons.arrow_back_ios,size: 15,color: Colors.cyan,),
                        SizedBox(width: 15,),
                        Image.asset("Image/delevatboy.png",height: 90,),
                        SizedBox(width: 20,),
                        Container(
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("توصيل احتياجاتك",style: TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.w400,color: Colors.cyan,fontFamily:"Inconsolata"),) ,
                              Expanded(child: Text("مثلا نسيت محفظتك مفتاحك بالبيت ",style: TextStyle(fontSize:13,
                                  fontWeight: FontWeight.w400,color: Colors.black54,fontFamily:"Inconsolata"),) ,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              GestureDetector(
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login()));
                },
                child: Container(
                  height: 100,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.2)
                  ),
                  child:
                  Padding(padding: EdgeInsets.only(left: 20,right: 10),
                    child:Row(
                      children: [
                        Icon(Icons.arrow_back_ios,size: 15,color: Colors.cyan,),
                        SizedBox(width: 15,),
                        Image.asset("Image/5504262_delivery_relocation_truck_icon.png",height: 90,),
                        SizedBox(width: 20,),
                        Container(
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("شراء احتياجاتك",style: TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.w400,color: Colors.cyan,fontFamily:"Inconsolata"),) ,
                              Expanded(child: Text("مثلا نسيت محفظتك مفتاحك بالبيت ",style: TextStyle(fontSize:13,
                                  fontWeight: FontWeight.w400,color: Colors.black54,fontFamily:"Inconsolata"),) ,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },

      ),
      )

    );
  }
}
