import 'package:flutter/material.dart';

class HomeCardModel {
  HomeCardModel({
    required this.title,
    required this.icon,
    required this.screen,
  });

  final String title;
  final IconData icon;
  final Widget screen;
}
