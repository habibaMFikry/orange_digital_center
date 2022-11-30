import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/widgets/default_text.dart';

class NewsCardItem extends StatelessWidget {
  const NewsCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding:
                EdgeInsets.only(right: 2.h, left: 1.h, top: 1.h, bottom: 1.h),
            child: CircleAvatar(
              radius: 4.h,
              backgroundImage: const NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const DefaultText(text: 'Title'),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 1.5.h),
                  child: DefaultText(
                    maxLines: 2,
                    fontSize: 8.sp,
                    text: 'News',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
