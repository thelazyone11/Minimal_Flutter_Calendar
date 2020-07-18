import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class DateGrid extends StatefulWidget {
  @override
  _DateGridState createState() => _DateGridState();
}

class _DateGridState extends State<DateGrid> {
  var _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      color: Colors.grey[200],
      child: Center(
          child: TableCalendar(
        calendarController: _calendarController,
        headerVisible: true,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          centerHeaderTitle: true,
        ),
        rowHeight: (MediaQuery.of(context).size.height * 0.3) / 8,
        calendarStyle: CalendarStyle(
          selectedColor: Colors.grey,
          todayColor: Colors.grey[200],
          todayStyle: TextStyle(color: Colors.black),
          selectedStyle: TextStyle(color: Colors.black),
          weekendStyle: TextStyle(color: Colors.black),
          weekdayStyle: TextStyle(color: Colors.black),
          outsideDaysVisible: false,
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekendStyle: TextStyle(color: Colors.black),
          weekdayStyle: TextStyle(color: Colors.black),
          dowTextBuilder: (date, locale) =>
              DateFormat.EEEE(locale).format(date)[0],
        ),
      )),
    );
  }
}
