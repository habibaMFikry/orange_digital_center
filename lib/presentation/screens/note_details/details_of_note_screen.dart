import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/styles/app_colors.dart';
import 'package:workshop/presentation/widgets/default_text.dart';

//This screen is details of note
class DetailsOfNoteScreen extends StatelessWidget {
  final String? description;
  final String? title;
  final String date;

  const DetailsOfNoteScreen({
    super.key,
    required this.description,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: DefaultText(
            text: title!,
            fontSize: 20.sp,
          ),
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              return Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded, size: 30.sp),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              //Title
              SizedBox(height: 5.h),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: DefaultText(
                  text: '$title',
                  textColor: Colors.black,
                  fontSize: 15.sp,
                ),
              ),

              //Date
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: DefaultText(
                  text: date,
                  textColor: Colors.black,
                  fontSize: 15.sp,
                ),
              ),

              //Description
              SizedBox(height: 5.h),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: Text("$description",
                    style: TextStyle(
                      fontSize: 15.sp,
                    )),
              ),
            ],
          ),
        ));
  }
}
