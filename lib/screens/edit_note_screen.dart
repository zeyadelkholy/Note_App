import 'package:flutter/material.dart';
import 'package:notes_app/screens/widgets/custom%20appbar.dart';
import 'package:notes_app/screens/widgets/custom%20textfield.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(text: 'Edit Note',icon: Icons.check,),
            const SizedBox(height: 50),
            const CustomTextField(hintText: 'Title'),
            const SizedBox(height: 16),
            const CustomTextField(hintText: 'Content',maxLines: 10,)
          ],
        ),
      ),
    ),
    );
  }
}
