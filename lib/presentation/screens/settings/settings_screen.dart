import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/screens/our_parteners/our_partner_screen.dart';

import '../../styles/app_colors.dart';
import '../faq/faq.dart';
import '../login/login_screen.dart';

import '../support/support.dart';
import '../terms/terms.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6.h, bottom: 1.h),
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: 'Settings ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('FAQ'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FAQ(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Terms & Conditions'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Terms(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Our Parteners'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OurPartnerScreen(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Support'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Support(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
              title: const Text('logout'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text('Logout'),
                    content: const Text('Are you sure?'),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                            //style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              Navigator.of(ctx).pop(false);
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: AppColors.primaryColor,
                              side: const BorderSide(
                                  color: AppColors.primaryColor),
                              padding: EdgeInsets.symmetric(horizontal: 4.h),
                            ),
                            child: const Text(
                              'Cancel',
                              //style:
                              //     TextStyle(color: Theme.of(context).accentColor),
                            ),
                          ),
                          ElevatedButton(
                            //style: ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 5.h)),

                            child: const Text(
                              'Sure',
                              //style:
                              //     TextStyle(color: Theme.of(context).accentColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
