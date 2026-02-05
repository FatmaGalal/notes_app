import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes (){
    emit(NotesLoading());
    try {
      var notebox = Hive.box<NoteModel>(kNoteBox);
      
      List<NoteModel> notes= notebox.values.toList();
      
      emit(NotesSuccess(notes: notes));
    } on Exception catch (e) {
      emit(NotesFailur(errorMessage: e.toString()));
    }
  }
}
