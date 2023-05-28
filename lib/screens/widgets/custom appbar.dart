import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({Key? key, required this.text, required this.icon}) : super(key: key);

  final String text;
  final IconData icon;

   @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(text,style: TextStyle(fontSize: 30),),
         Spacer(),
        Padding(
          padding:  EdgeInsets.only(top: 5),
          child: Container(
            height: 45,width: 45,
            decoration:  BoxDecoration(
                color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(child: Icon(icon,size: 28,)),
          ),
        ),

      ],
    );
  }
}
