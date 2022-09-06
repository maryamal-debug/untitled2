import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(15),
        child:  ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Maryam Ali",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      Icon(Icons.settings_ethernet,color: Colors.black,size: 30,),
                    ],
                  ) ,
                ),

                SizedBox(height: 10,),
                Container(
                  height: 45,width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow: [BoxShadow(
                    blurRadius: 0.5,
                    spreadRadius: 0.3,
                    color: Colors.grey,
                  )]
                  ),
                  child: Padding(padding: EdgeInsets.all(7),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Icon(Icons.card_giftcard,color: Colors.cyan,),
                        SizedBox(width: 10,),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Green",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                              SizedBox(height: 3,),
                              Text("0 Pts",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.normal),),
                            ],
                          ),
                        ),
                        SizedBox(width: 37,),
                        Icon(Icons.arrow_forward_ios_outlined,color: Colors.cyan,size: 20,),
                      ],
                    ) ,
                  ),

                ),
                SizedBox(height: 15,),

                Container(
                  height: 100,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow: [BoxShadow(
                    blurRadius: 0.5,
                    spreadRadius: 0.3,
                    color: Colors.grey,
                  )]),
                  child:Padding(padding: EdgeInsets.only(top: 20),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 45,width: 45,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.2)),
                              child: Icon(Icons.person,color: Colors.black54,),
                            ),
                            SizedBox(height: 5,),
                            Text("Profile",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 45,width: 45,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(0.2)),
                              child: Icon(Icons.support_agent_sharp,color: Colors.black54,),
                            ),
                            SizedBox(height: 5,),
                            Text("Support",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 45,width: 45,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(0.2)),
                              child: Icon(Icons.payment_rounded,color: Colors.black54,),
                            ),
                            SizedBox(height: 5,),
                            Text("Payments",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 45,width: 45,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(0.2)),
                              child: Icon(Icons.language,color: Colors.black54,),
                            ),
                            SizedBox(height: 5,),
                            Text("language",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                          ],

                        ),
                      )
                    ],
                  ),

                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 190,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow: [BoxShadow(
                    blurRadius: 0.5,
                    spreadRadius: 0.3,
                    color: Colors.grey,
                  )]),
                  child:Padding(padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Toters Cash",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600),),
                          SizedBox(width: 5,),
                          Icon(Icons.info_outline,color: Colors.cyan,),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.wallet,color: Colors.grey,),
                          SizedBox(width: 5,),
                          Text("Wallet",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          SizedBox(width: 185,),
                          Text("IQD 0",style: TextStyle(color: Colors.cyan,fontSize: 16,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 1,width: MediaQuery.of(context).size.width,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.add,color: Colors.grey,),
                          SizedBox(width: 5,),
                          Text("Add Funds",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          SizedBox(width: 185,),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 1,width: MediaQuery.of(context).size.width,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.arrow_upward_sharp,color: Colors.grey,),
                          SizedBox(width: 5,),
                          Text("Send Funds",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          SizedBox(width: 185,),
                        ],
                      ),
                    ],
                  ),
                  ),

                ),
                SizedBox(height: 15,),
                Container(
                  height: 140,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow: [BoxShadow(
                    blurRadius: 0.5,
                    spreadRadius: 0.3,
                    color: Colors.grey,
                  )]),
                  child:Padding(padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Promotionns",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.settings,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Wallet",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                            SizedBox(width: 185,),
                            Text("IQD 0",style: TextStyle(color: Colors.cyan,fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 1,width: MediaQuery.of(context).size.width,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.bookmark,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Add Promo Code",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),

                          ],
                        ),
                      ],
                    ),
                  ),

                ),
                SizedBox(height: 15,),
                Container(
                  height: 280,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow: [BoxShadow(
                    blurRadius: 0.5,
                    spreadRadius: 0.3,
                    color: Colors.grey,
                  )]),
                  child:Padding(padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Account details",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.notifications_none,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Notifications",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 1,width: MediaQuery.of(context).size.width,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Addresses",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                            SizedBox(width: 185,),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 1,width: MediaQuery.of(context).size.width,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.favorite_border,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Favorite",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 1,width: MediaQuery.of(context).size.width,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.list_alt,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Prefernces",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 1,width: MediaQuery.of(context).size.width,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.person_add_alt,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Refer a friend",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ],
                    ),
                  ),

                ),
                SizedBox(height: 15,),
                Container(
                  height: 240,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow: [BoxShadow(
                    blurRadius: 0.5,
                    spreadRadius: 0.3,
                    color: Colors.grey,
                  )]),
                  child:Padding(padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Help center",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.support_agent_sharp,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Get Support",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 1,width: MediaQuery.of(context).size.width,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.comment,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Support Tickets",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 1,width: MediaQuery.of(context).size.width,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.format_paint_outlined,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("Legal",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: 1,width: MediaQuery.of(context).size.width,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.info_outline_rounded,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("FAQ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ],
                    ),
                  ),

                ),
                SizedBox(height: 15,),
                Container(
                  height: 65,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow: [BoxShadow(
                    blurRadius: 0.5,
                    spreadRadius: 0.3,
                    color: Colors.grey,
                  )]),
                  child: Padding(padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app,color: Colors.redAccent,),
                      SizedBox(width: 5,),
                      Text("Sign out",style: TextStyle(color: Colors.redAccent,fontSize: 16,fontWeight: FontWeight.w600),),
                    ],
                  ),
                  ) ,
                  ),

              ],
            )
          ],
        ),

        ),

      ),
    );
  }

}

