part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesCreate extends NotesState{}
class NotesNotExists extends NotesState{}

class DatabaseCreate extends NotesState{}

class InitialNotesSuccess extends NotesState{}
class InitialNotesError extends NotesState{}

class InsertNotesSuccess extends NotesState{}
class InsertNotesError extends NotesState{}

class DeleteNotesSuccess extends NotesState{}
class DeleteNotesError extends NotesState{}

class UpdateNotesSuccess extends NotesState{}
class UpdateNotesError extends NotesState{}

class GetOneRowNotesSuccess extends NotesState{}
class GetOneRowNotesError extends NotesState{}

class GetAllRowNotesSuccess extends NotesState{}
class GetAllRowNotesError extends NotesState{}






