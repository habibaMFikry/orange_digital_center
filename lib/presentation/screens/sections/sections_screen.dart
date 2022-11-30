import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/data/Models/lectures_model.dart';
import 'package:workshop/presentation/views/lectures_card_item.dart';
import 'package:workshop/presentation/widgets/default_appbar.dart';

class SectionsScreen extends StatelessWidget {
  SectionsScreen({Key? key}) : super(key: key);

  final List sectionsModelDummyData = <LecturesModel>[
    LecturesModel(
        lectureTitle: 'Flutter',
        lectureTime: '3HRs',
        examDate: '19-08-2022',
        startTime: '12:00 PM',
        endTime: '2:00 PM'),
    LecturesModel(
        lectureTitle: 'React',
        lectureTime: '3HRs',
        examDate: '8-08-2022',
        startTime: '1:00 PM',
        endTime: '2:00 PM'),
    LecturesModel(
        lectureTitle: 'Ionic',
        lectureTime: '4HRs',
        examDate: '18-08-2022',
        startTime: '12:00 PM',
        endTime: '2:00 PM'),
    LecturesModel(
        lectureTitle: 'Xamarin',
        lectureTime: '4HRs',
        examDate: '18-08-2022',
        startTime: '12:00 PM',
        endTime: '2:00 PM'),
    LecturesModel(
        lectureTitle: 'Android',
        lectureTime: '4HRs',
        examDate: '18-08-2022',
        startTime: '12:00 PM',
        endTime: '2:00 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(7.h),
          child: const DefaultAppbar(
            automaticallyImplyLeading: true,
            title: 'Sections',
          )),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          elevation: 5,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.sp),
              borderSide: const BorderSide(
                color: Colors.teal,
              )),
          margin: EdgeInsets.symmetric(
            vertical: 1.h,
          ),
          child: LecturesCardItem(
            lecturesModel: sectionsModelDummyData[index],
          ),
        ),
        itemCount: sectionsModelDummyData.length,
        padding: EdgeInsets.symmetric(horizontal: 5.w),
      ),
    );
  }
}
