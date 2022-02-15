import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:teste_de_dominio/app/constants/constants.dart';
import 'package:teste_de_dominio/app/models/customtext.dart';
import 'package:teste_de_dominio/app/modules/agenda_page/calendar/hours.dart';
import 'package:teste_de_dominio/app/modules/salaopage/salaopage.dart';



import 'calendar/dropdown.dart';

class AgendPage extends StatefulWidget {
  const AgendPage({Key? key}) : super(key: key);

  @override
  _AgendPageState createState() => _AgendPageState();
}

@override
int activeIndex = 0;

class _AgendPageState extends State<AgendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 120,
                      color: const Color(0xff3d4571),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white10,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        height: 40,
                                        width: 40,
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SalaoPage()));
                                          },
                                          icon: Icon(
                                            Icons.arrow_back_ios_outlined,
                                            size: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // ignore: prefer_const_constructors
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffe4e6eb),
                            borderRadius: BorderRadius.circular(20)),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: const Color(0xffe4e6eb),
                  height: 890,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                            height: 150,
                            child: TableCalendar(
                                calendarFormat: CalendarFormat.week,
                                calendarStyle: CalendarStyle(
                              selectedDecoration:
                                  const BoxDecoration(color: Colors.blue),
                              todayDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: starsColor,
                              )),
                                firstDay: DateTime.utc(2010, 10, 16),
                                lastDay: DateTime.utc(2030, 3, 14),
                                focusedDay: DateTime.now(),
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, right: 15, left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                              ),
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              child: const Hours(
                                hour1: '10:00 AM',
                                hour2: "11:00 AM",
                                hour3: "12:00 PM",
                                hour4: "13:00 PM",
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(const Color(0xff3d4571), 20,
                                      "Serviço", true),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    child: DropDownCustom(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
