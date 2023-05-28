import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/screens/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/screens/widgets/custom%20appbar.dart';
import 'package:notes_app/screens/widgets/custom%20listview.builder.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(onPressed: () {

          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context, builder: (context){
           return AddNoteBottomSheet();
          },);
        },
            child:Icon(Icons.add,),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              CustomAppBar(text: 'Notes',icon: Icons.search),
              SizedBox(height: 10,),
              Expanded(
                child: CustomListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





