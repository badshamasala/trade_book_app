import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_application_1/widgets/widget.dart';

import 'navigation_drawer.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'ICICI', percent: 40, color: const Color(0xff8084E0)),
    Data(name: 'HDFC', percent: 15, color: const Color(0xff5357BE)),
    Data(name: 'AXIS', percent: 15, color: Color(0xff202374)),
    Data(name: 'BANK', percent: 15, color: const Color(0xff8084E0)),
    Data(name: 'IDBI', percent: 15, color: Color(0xff202374)),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({required this.name, required this.percent, required this.color});
}

class PieChart1 extends StatefulWidget {
  @override
  State<PieChart1> createState() => _PieChart1State();
}

class _PieChart1State extends State<PieChart1> {
  int touchedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
      drawer:  NavigationDrawerWidget(),
        appBar: WidgetHelper().TradeBookAppBar(context),
        body: Column(
          children: [
            SizedBox(height: 135),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                     /*  touchCallback: (pieTouchResponse) {
                        setState(() {
                          if (pieTouchResponse.touchInput is FlLongPressEnd ||
                              pieTouchResponse.touchInput is FlPanEnd) {
                            touchedIndex = -1;
                          } else {
                            touchedIndex = pieTouchResponse.touchedSectionIndex;
                          }
                        });
                      }, */
                    ),
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 0,
                    centerSpaceRadius: 70,
                    sections: getSections(touchedIndex),
                  ),
                ),
              ],
            ),
          ],
        )
        );
  }
}
List<PieChartSectionData> getSections(int touchedIndex) => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final isTouched = index == touchedIndex;
      final double fontSize = isTouched ? 18 : 10;
      final double radius = isTouched ? 75 : 55;

      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        title: '${data.name}',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      );

      return MapEntry(index, value);
    })
    .values
    .toList();
