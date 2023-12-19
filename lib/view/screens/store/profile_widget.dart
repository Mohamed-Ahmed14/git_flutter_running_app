import 'package:flutter/material.dart';
import 'package:running_app_test/model/store/store.dart';

class ProfileWidget extends StatelessWidget {
  final Person person;
  const ProfileWidget({required this.person,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 33,
            backgroundColor: Colors.transparent,
            child: Image.asset(person.image??"",fit: BoxFit.fill,),
          
          ),
        ),
        SizedBox(height: 0,),
        Text(person.name??"",style: TextStyle(color: Color(0xffCDCDCD),fontSize: 10),)
      ],
    );
  }
}
