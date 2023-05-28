import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({Key? key,
     required this.hintText,
     this.maxLines,
     this.onsaved,
     this.validatmessage,
     this.onChanged,
   }) : super(key: key);

  final String hintText;
  final int? maxLines;
  final String? validatmessage;
  final void Function(String?)? onsaved;
   final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (value){
        if (value?.isEmpty ?? true){
          return validatmessage;
           } else {
          return null ;
        }
      },
      onSaved: onsaved,
      onChanged: onChanged,
      cursorColor: PrimaryColor,
      maxLines: maxLines ,
        decoration: InputDecoration(
        hintText : hintText,
        hintStyle: TextStyle(color: PrimaryColor),
        border: builderBorder(),
        enabledBorder: builderBorder(),
        focusedBorder: builderBorder(PrimaryColor),

      ),
    );
  }
}


  OutlineInputBorder builderBorder([color]){
  return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white),
          borderRadius: BorderRadius.circular(8),
  );

}