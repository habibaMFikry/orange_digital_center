import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../widgets/default_text.dart';

class OurPartnerScreen extends StatelessWidget {
  const OurPartnerScreen({Key? key}) : super(key: key);

  _launchURL() async {
    //final Uri url = Uri.parse('https://www.orangedigitalcenters.com/');
    const url = 'https://www.orangedigitalcenters.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Our partners',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: InkWell(
        onTap: _launchURL,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0.w, vertical: 3.h),
          child: Container(
            height: 35.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.grey,
                  Colors.white,
                  Colors.grey,
                ],
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'ODC',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DefaultText(
                          text: 'Orange',
                          textColor: Colors.orange,
                          fontSize: 23.sp,
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        DefaultText(
                          text: 'Digital Center',
                          textColor: Colors.black,
                          fontSize: 23.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
