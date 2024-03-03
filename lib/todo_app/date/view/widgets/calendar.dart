import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key, today});

  @override
  State<Calendar> createState() => _CalendarState();
}

DateTime today = DateTime.now();

class _CalendarState extends State<Calendar> {
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      selectedDayPredicate: (day) => isSameDay(day, today),
      focusedDay: today,
      firstDay: DateTime.utc(2010 - 01 - 01),
      lastDay: DateTime.utc(2030 - 01 - 01),
      onDaySelected: _onDaySelected,
    );
  }
}
