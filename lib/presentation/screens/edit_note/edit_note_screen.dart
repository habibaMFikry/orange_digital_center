import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/business_logic/notes/notes_cubit.dart';
import 'package:workshop/presentation/styles/app_colors.dart';
import 'package:workshop/presentation/widgets/default_text.dart';
import 'package:workshop/presentation/widgets/default_text_form_field.dart';

class EditNotesScreen extends StatelessWidget {
  final String title;
  final int id;
  final String description;

  final TextEditingController editTitle = TextEditingController();
  final TextEditingController editDescription = TextEditingController();

  EditNotesScreen({
    super.key,
    required this.description,
    required this.id,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> editNoteKey = GlobalKey<FormState>();
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        NotesCubit notesCubit = NotesCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.primaryColor,
            elevation: 0,
            centerTitle: true,
            title: DefaultText(
              text: "Edit Note",
              fontSize: 20.sp,
            ),
            leading: IconButton(
              onPressed: () {
                return Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_rounded, size: 30),
            ),
          ),
          body: Form(
            key: editNoteKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: DefaultTextFormField(
                    controller: editTitle,
                    maxLines: 1,
                    labelText: 'Title',
                    hintText: 'Edit Title',
                    validation: (val) {
                      if (val.isEmpty) {
                        return 'Please Enter Your Title';
                      } else if (val.length > 50) {
                        return "Title must be less than 50 characters";
                      }
                    },
                    onChanged: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: DefaultTextFormField(
                    maxLines: 5,
                    labelText: 'Description',
                    hintText: 'Edit Description',
                    validation: (val) {
                      if (val.isEmpty) {
                        return 'Please Enter Your Description';
                      }
                    },
                    controller: editDescription,
                    onChanged: () {},
                  ),
                ),
                Container(
                  width: 120,
                  margin: const EdgeInsets.only(top: 15.0),
                  child: ElevatedButton(
                    child: const DefaultText(text: "Edit"),
                    onPressed: () {
                      if (editNoteKey.currentState!.validate()) {
                        notesCubit.update(
                            context,
                            id,
                            DateFormat("hh:mm a      dd/MM/yyyy")
                                .format(DateTime.now()),
                            editTitle.text == "" ? title : editTitle.text,
                            editDescription.text == ""
                                ? description
                                : editDescription.text);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
