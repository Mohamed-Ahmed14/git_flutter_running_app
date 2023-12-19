import 'package:flutter/material.dart';

import '../../../model/history_model/record.dart';

class HistoryWidget extends StatelessWidget {
   final Res resualt;
   const HistoryWidget({required this.resualt,super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),



      decoration: BoxDecoration(
        color: Color(0xff28333F),
        border: Border.all(color: Color(0xff1C252C)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(resualt.day??""+"May",style: TextStyle(
                  color: Color(0xff7B61FF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),
                Row(
                  children: [

                  if(resualt.points! > 0)
                    Text("${resualt.points}pt",style: TextStyle(
                      color: Color(0xffF14985),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),),
                    if(resualt.points! > 0)
                    SizedBox(width: 5,),
                    if(resualt.points! > 0)
                    CircleAvatar(
                      radius: 1,
                      backgroundColor: Colors.white,
                    ),
                    if(resualt.points! > 0)
                    SizedBox(width: 5,),





                    Text("${resualt.distance} KM"??"",style: TextStyle(
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
                    Text("${resualt.kcal} Kcal",style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),),
                  ],
                ),
              ],
            ),
          ),
          Text(resualt.steps??"",style: TextStyle(
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
  }
}
