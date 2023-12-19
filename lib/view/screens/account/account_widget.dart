import 'package:flutter/material.dart';
import 'package:running_app_test/model/account_model/withdrwal.dart';

class AccountWidget extends StatelessWidget {
  final Withdrwal withdrwal;
  const AccountWidget({required this.withdrwal,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xff2F3C50),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xff1C252C),width: 1),
      ),
      child: Row(
        children: [
          Image.asset(withdrwal.image??"",),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(withdrwal.type??"",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),),
                Text("Unfortunately we don't know \nwhere to send your money",style: TextStyle(
                  color: Color(0xffCDCDCD),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios_outlined,size: 16,color:Color(0xffBEBEBE),),
        ],
      ),
    );
  }
}
