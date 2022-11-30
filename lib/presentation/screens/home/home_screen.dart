import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/data/Models/home_card_model.dart';
import 'package:workshop/presentation/screens/events/events_screen.dart';
import 'package:workshop/presentation/screens/finals/finals_screen.dart';
import 'package:workshop/presentation/screens/lectures/lectures_screen.dart';
import 'package:workshop/presentation/screens/midterms/midterms_screen.dart';
import 'package:workshop/presentation/screens/notes/notes_screen.dart';
import 'package:workshop/presentation/screens/sections/sections_screen.dart';
import 'package:workshop/presentation/views/home_card_item.dart';
import 'package:workshop/presentation/widgets/default_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HomeCardModel> homeCards = [
    HomeCardModel(
        title: 'Lectures',
        icon: Icons.menu_book_outlined,
        screen: LecturesScreen()),
    HomeCardModel(
        title: 'Section',
        icon: Icons.people_outline_outlined,
        screen: SectionsScreen()),
    HomeCardModel(
        title: 'Midterms',
        icon: Icons.event_note_rounded,
        screen: MidtermsScreen()),
    HomeCardModel(
        title: 'Finals',
        icon: Icons.event_note_outlined,
        screen: FinalsScreen()),
    HomeCardModel(
      title: 'Events',
      icon: Icons.calendar_month_outlined,
      screen: const EventsScreen(),
    ),
    HomeCardModel(
      title: 'Notes',
      icon: Icons.task,
      screen: const NotesScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(7.h),
          child: const DefaultAppbar(
            title: 'Home',
          )),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 5.w,
          end: 5.w,
          top: 5.w,
        ),
        child: GridView.builder(
          itemCount: homeCards.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) => HomeCardItem(
              title: homeCards[index].title,
              icon: homeCards[index].icon,
              screen: homeCards[index].screen),
        ),
      ),
    );
  }
}
