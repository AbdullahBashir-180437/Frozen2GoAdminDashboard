import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:frozen2goportal/constants/constants.dart';

class ViewLineChart extends StatefulWidget {
  const ViewLineChart({Key? key}) : super(key: key);

  @override
  _ViewLineChartState createState() => _ViewLineChartState();
}

class _ViewLineChartState extends State<ViewLineChart> {
  List<Color> gradientColors = [
    primaryColor,
    secondaryColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        appPadding,
        appPadding * 1.5,
        appPadding,
        appPadding,
      ),
      child: LineChart(LineChartData(
          gridData: FlGridData(
            show: false,
          ),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,

              getTitles: (value) {
                switch(value.toInt()){
                  case 1:
                    return '44.2F';
                  case 4:
                    return '43.2F';
                  case 7:
                    return '46.2F';
                  case 10:
                    return '45.2F';
                  case 13:
                    return '43.2F';
                  case 16:
                    return '42.2F';
                  case 19:
                    return '41.2F';
                }
                return '';
              }
            ),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          minX: 0,
          maxX: 20,
          maxY: 0,
          minY: 6,
          lineBarsData: [
            LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(4, 2),
                  FlSpot(9, 4),
                  FlSpot(12, 3),
                  FlSpot(15, 5),
                  FlSpot(18, 3),
                  FlSpot(20, 4),
                ],
                isCurved: true,
                colors: [primaryColor],
                barWidth: 5,
                isStrokeCapRound: true,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                    show: true,
                    colors:
                        gradientColors.map((e) => e.withOpacity(0.3)).toList(),
                    gradientFrom: Offset(0, 0),
                    gradientTo: Offset(0, 1.75)))
          ])),
    );
  }
}
