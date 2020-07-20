import 'package:calendar_app/models/images_models.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class DateGrid extends StatefulWidget {
  @override
  _DateGridState createState() => _DateGridState();
}

class _DateGridState extends State<DateGrid> {
  var _calendarController;
  int counter = 0;
  var month;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
    month = DateTime.now().month - 1;
    counter = month;
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
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.grey[100],
      child: Center(
          child: TableCalendar(
        calendarController: _calendarController,
        headerVisible: true,
        availableGestures: AvailableGestures.none,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          centerHeaderTitle: true,
        ),
        rowHeight: (MediaQuery.of(context).size.height * 0.4) / 10,
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
        onRightButtonTapped: () {
          counter++;
          if (counter == 12) {
            counter = 0;
          }
          Provider.of<ImageModels>(context, listen: false)
              .passCurrentMonth(counter);
        },
        onLeftButtonTapped: () {
          counter--;
          if (counter == -1) {
            counter = 11;
          }

          Provider.of<ImageModels>(context, listen: false)
              .passCurrentMonth(counter);
        },
      )),
    );
  }
}
