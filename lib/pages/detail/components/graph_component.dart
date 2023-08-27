import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GraphComponent extends StatefulWidget {
  const GraphComponent({Key? key});

  @override
  State<GraphComponent> createState() => _GraphComponentState();
}

class _GraphComponentState extends State<GraphComponent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
              
            )
            bottomTitles: SideTitles(
              showTitles: true,
              interval: 1,
              margin: 12,
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.grey),
          ),
          gridData: FlGridData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 5),
                FlSpot(1, 10),
                FlSpot(2, 8),
                FlSpot(3, 12),
                // ... tambahkan lebih banyak data
              ],
              isCurved: true,
              colors: [Colors.blue],
              dotData: FlDotData(show: true, dotSize: 6),
              belowBarData: BarAreaData(show: false),
            ),
          ],
          minY: 0,
        ),
      ),
    );
  }
}
