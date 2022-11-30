import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class Support extends StatelessWidget {
  static const routeName = '/support';
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Support',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
              child: TextFormField(
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
              child: TextFormField(
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.top,
                maxLines: 4,
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  hintText: 'What is making you unhappy',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.h),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.h, vertical: 1.5.h),
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 2.h),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
