import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constants.dart';
import 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffAC3931);

  addNote(NoteModel note) async{
    emit(AddNoteLoading());

  try {
    var notesBox = Hive.box<NoteModel>(NotesBox);
    emit(AddNoteSuccess());
    await notesBox.add(note); ///   add receive a dynamic values
  } catch (e) {
    AddNoteFailure(e.toString());
  }


  }



}
