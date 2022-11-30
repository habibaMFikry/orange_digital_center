import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/business_logic/notes/notes_cubit.dart';

import 'package:workshop/presentation/widgets/default_text.dart';
import 'package:workshop/presentation/widgets/default_text_form_field.dart';

import '../../styles/app_colors.dart';

class AddNotesScreen extends StatelessWidget {
  const AddNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> addNoteKey = GlobalKey<FormState>();

    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        NotesCubit notesCubit = NotesCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.primaryColor,
            elevation: 0,
            centerTitle: true,
            title: DefaultText(
              text: "Add Note",
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
            key: addNoteKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: ListView(
                children: [
                  SizedBox(height: 5.h),
                  DefaultTextFormField(
                    maxLines: 1,
                    labelText: 'Title',
                    hintText: 'Enter Title',
                    validation: (val) {
                      if (val.isEmpty) {
                        return 'Please Enter Your Title';
                      } else if (val.length > 50) {
                        return "Title must be less than 50 characters";
                      }
                    },
                    onChanged: (value) {
                      notesCubit.title = value;
                    },
                    controller: notesCubit.titleController,
                  ),
                  SizedBox(height: 5.h),
                  DefaultTextFormField(
                    maxLines: 5,
                    labelText: 'Description',
                    hintText: 'Enter Description',
                    validation: (val) {
                      if (val.isEmpty) {
                        return 'Please Enter Your Description';
                      }
                    },
                    onChanged: (value) {
                      notesCubit.description = value;
                    },
                    controller: notesCubit.descriptionController,
                  ),
                  SizedBox(height: 5.h),
                  ElevatedButton(
                    child: const Text("Add"),
                    onPressed: () {
                      if (addNoteKey.currentState!.validate()) {
                        notesCubit.insert(context);
                        notesCubit.titleController.clear();
                        notesCubit.descriptionController.clear();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
