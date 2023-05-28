import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButtom extends StatelessWidget {
   CustomButtom({Key? key, this.onTap,  this.isLoading = false}) : super(key: key);

  final void Function()? onTap;
   final bool? isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: PrimaryColor),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
