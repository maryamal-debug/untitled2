import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../auth/listver.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _Controller = TextEditingController();
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
                child:Icon(Icons.arrow_forward_ios_outlined,size: 25,color: Colors.black,),
              )
          ),
        ],

        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index){
          return Padding(padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("ادخل رقم الهاتف",style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold,color: Colors.black,),
                ),
                SizedBox(height: 10,),
                Form(
                  
                  child: TextFormField(

                  controller: _Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),

                    suffixIcon: Padding(padding: EdgeInsets.only(right: 10,left: 10),
                      child: Image.asset("Image/iraq.png",height: 50,width: 50,),),
                    suffixText: '+964',
                    hintText:'رقم الهاتف',

                  ) ,
                  keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny('رقم الهاف غير صحيح')
                    ],

                ),),
                SizedBox(height: 30,),

                Container(
                    height: 45,width: 330,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.cyan,),
                    child: Center(
                      child: Text("استمر",style: TextStyle(color: Colors.white),),
                    )
                ),
                SizedBox(height: 20,),

                Center(
                  child:  Text("هل لديك حساب سابق لدى توترز ورقم هاتف؟",style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.normal,color: Colors.cyan,),
                  ) ,
                ),
                Center(
                  child:  Padding(padding: EdgeInsets.only(top: 300,),
                    child:Expanded(child: Text("من خلال الاستمرار ، فانك ، توافق على البنود والشروط. يرجى مراجعة سياسة الخصوصية لدينا لمعرفة المزيد.",style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.normal,color: Colors.cyan,),
                    )   ,)

                  )
                ),


                
              ],
            ),


          );
        },

      ),
    );
  }
}

