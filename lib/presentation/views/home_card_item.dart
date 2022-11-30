import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/widgets/default_text.dart';

class HomeCardItem extends StatelessWidget {
  const HomeCardItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.screen,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screen,
            ));
      },
      child: Card(
        // color: AppColors.primaryColor.withOpacity(0.1),

        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.teal),
          borderRadius: BorderRadius.circular(5.sp),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 20.sp,
                backgroundColor: Colors.grey.withOpacity(0.1),
                child: Icon(icon,color: Colors.teal,size: 20.sp,)),
            DefaultText(text: title,fontSize: 15.sp),
          ],
        ),
      ),
    );
  }
}
