import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/styles/app_colors.dart';
import 'package:workshop/presentation/widgets/default_text.dart';

class DefaultAppbar extends StatelessWidget {
  const DefaultAppbar({Key? key, required this.title, this.automaticallyImplyLeading = false}) : super(key: key);
  final String title;
 final bool? automaticallyImplyLeading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      title: DefaultText(
        text: title,
        fontSize: 20.sp,
        textColor: Colors.white,
      ),
      automaticallyImplyLeading: automaticallyImplyLeading!,
      centerTitle: true,
    );
  }
}
