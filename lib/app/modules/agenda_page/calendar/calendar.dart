import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarioPage extends StatefulWidget {
  @override
  _CalendarioPageState createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {


  DateTime _focusedDay = DateTime.now();
  late DateTime _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'pt_BR',
      firstDay: DateTime.utc(2022, 01, 01),
      focusedDay: _focusedDay,
      lastDay: DateTime.utc(3030, 01, 01),
      // events: _events,
      calendarFormat: CalendarFormat.week,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        // selectedColor: Colors.deepPurpleAccent,
        todayDecoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            shape: BoxShape.circle
        ),
        // todayColor: Colors.white,
        // todayStyle: TextStyle(color: Color(0xff201e1f)),
        // markersColor: Colors.pinkAccent,
        outsideDaysVisible: false,
      ),
      headerStyle: HeaderStyle(formatButtonVisible: false,),
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },

      onDaySelected: (selectedDay, focusedDay){
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay; // update `_focusedDay` here as well
        });
      },

      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
    );
  }
}