import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:workshop/presentation/styles/app_colors.dart';

import '../../widgets/default_appbar.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(7.h),
        child: const DefaultAppbar(
          automaticallyImplyLeading: true,
          title: 'Events',
        ),
      ),
      body: SfCalendar(
        selectionDecoration: const BoxDecoration(color: AppColors.primaryColor),
        monthViewSettings: const MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
        ),
        dataSource: EventsDataSource(getAppointments()),
        firstDayOfWeek: 6,
        view: CalendarView.month,
      ),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> events = <Appointment>[];
  DateTime today = DateTime.now();
  DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0);
  DateTime endTime = startTime.add(const Duration(hours: 2));

  events.add(Appointment(
      isAllDay: true,
      startTime: startTime,
      endTime: endTime,
      subject: "Event",
      color: AppColors.primaryColor));
  events.add(Appointment(
      isAllDay: true,
      startTime: startTime,
      endTime: endTime,
      subject: "Event",
      color: AppColors.primaryColor));

  startTime = DateTime(today.year, today.month, today.day + 1, 9, 0, 0);
  endTime = startTime.add(const Duration(hours: 2));

  events.add(Appointment(
      isAllDay: true,
      startTime: startTime,
      endTime: endTime,
      subject: "hello",
      color: AppColors.primaryColor));

  startTime = DateTime(today.year, today.month, today.day + 11, 9, 0, 0);
  endTime = startTime.add(const Duration(hours: 2));

  events.add(Appointment(
      isAllDay: true,
      startTime: startTime,
      endTime: endTime,
      subject: "Bye",
      color: AppColors.primaryColor));
  return events;
}

class EventsDataSource extends CalendarDataSource {
  EventsDataSource(List<Appointment> source) {
    appointments = source;
  }
}
