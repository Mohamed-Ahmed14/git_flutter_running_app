import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2F3C50),
      appBar: AppBar(
        backgroundColor: Color(0xff7B61FF),
        leadingWidth: 40,

        leading: Icon(Icons.menu_outlined,size: 20,color: Color(0xffCDCDCD),),


        centerTitle: false,
        title: Row(
          children: [
            Image.asset("assets/images/profile.png"),
            SizedBox(width: 10,),
            Column(
              children: [
                Text("HELLO!",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
                Text("Daniela",style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
              ],
            ),
          ],
        ),

        actions: [
          Image.asset("assets/images/notificationnotigy.png",width: 24,height: 20,),
          SizedBox(width: 10,),
          Image.asset("assets/images/notificationsms.png",width: 22,height: 30,),
          SizedBox(width: 10,),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                color: Color(0xff7B61FF),
                borderRadius: BorderRadiusDirectional.only(bottomEnd:Radius.circular(15),bottomStart: Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text("14,000/",style: TextStyle(
                                    color: Color(0xffCDCDCD),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                  SizedBox(width: 2,),
                                  Text("15,000",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),),
                                  SizedBox(width: 2,),
                                  Expanded(
                                    child: Text("Steps",style: TextStyle(
                                      color: Color(0xffCDCDCD),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                  ),
                                  Text("Level 5",style: TextStyle(
                                    color: Color(0xffFFC932),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),),
                                  SizedBox(width: 15,),
                                ],
                              ),
                              LinearPercentIndicator(
                                width: 280,
                                lineHeight: 10,
                                barRadius: Radius.circular(5),
                                percent: 0.75,
                                backgroundColor: Colors.white,
                                linearGradient: LinearGradient(colors:[Color(0xffB96FFF),Color(0xff55CB74)]),
                              ),


                            ],
                          ),
                        ),
                        Image.asset("assets/images/badgestar.png"),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      //height: 68,
                      padding: EdgeInsets.all(12),
                      width: 400,
                      decoration: BoxDecoration(
                        //color: Color(0xff7B61FF),
                        color: Colors.deepPurpleAccent[200],
                        border: Border.all(color: Colors.deepPurpleAccent[100]!),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset("assets/images/photo.png"),
                                    ),
                                    PositionedDirectional(
                                      bottom: 0,
                                      end: 0,
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.green,

                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text("26 May",style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                    Text("Today",style: TextStyle(
                                      color: Color(0xff43C465),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    Text("01:09:44",style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          CircularPercentIndicator(radius: 30,
                          progressColor: Color(0xffF14985),
                          backgroundColor: Color(0xffF6F9FA),
                            percent: 2345/5000,
                            reverse: true,
                            center: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/stepsmanIcon.png"),
                                SizedBox(width: 1,),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("2345",style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                      SizedBox(width: 24,
                                        child: Divider(
                                          color: Colors.white,
                                          //thickness: 1,
                                        ),
                                      ),
                                      Text("5000",style: TextStyle(
                                        color: Color(0xff43C465),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              //color: Color(0xff7B61FF),
                              color: Colors.deepPurpleAccent[200],
                              border: Border.all(color: Colors.deepPurpleAccent[100]!),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("53,524",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700
                                ),),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/foot.png"),
                                    SizedBox(width: 6,),
                                    Text("Steps",style: TextStyle(
                                        color: Color(0xffCDCDCD),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400
                                    ),),


                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            height: 100,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              //color: Color(0xff7B61FF),
                              color: Colors.deepPurpleAccent[200],
                              border: Border.all(color: Colors.deepPurpleAccent[100]!),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("1000",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700
                                ),),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/coins.png"),
                                    SizedBox(width: 6,),
                                    Text("Earned points",style: TextStyle(
                                        color: Color(0xffCDCDCD),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400
                                    ),),


                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),


                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Image.asset("assets/images/adv.png",height: 85,width: 340,fit: BoxFit.fill,),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("History",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),),
                  Text("See all",style: TextStyle(
                    color: Color(0xff7B61FF),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),)
                ],
              ),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(left: 12,right: 12),

                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Color(0xff7B61FF)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("27 May",style: TextStyle(
                            color: Color(0xff7B61FF),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),),
                          Row(
                            children: [
                              Text("100pt",style: TextStyle(
                                color: Color(0xffF14985),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),),
                              SizedBox(width: 5,),
                              CircleAvatar(
                                radius: 1,
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(width: 5,),

                              Text("12,4 Km",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),),
                              SizedBox(width: 5,),
                              CircleAvatar(
                                radius: 1,
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(width: 5,),
                              Text("1222 Kcal",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text("10,120",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),),
                    SizedBox(width: 4,),
                    Text("steps",style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),)
                  ],
                ),
              );
            }, separatorBuilder: (context, index) {
              return SizedBox(height:8);
            }, itemCount: 4),

          ],
        ),
      ),
    );
  }
}
