import 'package:alpha_edge_web/core/consts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartTwoWidget extends StatelessWidget {
  const BarChartTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: const FlGridData(show: true),
        alignment: BarChartAlignment.spaceAround,
        maxY: 50,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                fontSize: 0,
                color: whiteColor,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: whiteColor,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'BNB';
        break;
      case 1:
        text = 'ETH';
        break;
      case 2:
        text = 'LINK';
        break;
      case 3:
        text = 'DOT';
        break;
      case 4:
        text = 'DOT';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }

  Widget getLeftTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: whiteColor,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0%';
        break;
      case 10:
        text = '\$100k';
        break;
      case 20:
        text = '\$200k';
        break;
      case 30:
        text = '\$300k';
        break;
      case 40:
        text = '\$400k';
        break;
      case 50:
        text = '\$500k';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 23,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 60,
            getTitlesWidget: getLeftTitles,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
        border: Border.all(
          color: Color(0xFF4A74D2),
          width: 1,
        ),
      );

  List<BarChartGroupData> get barGroups => [
        BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              toY: 20,
              width: 30,
              color: bColorOne,
              borderRadius: BorderRadius.circular(16),
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              toY: 20,
              width: 30,
              color: bColorOne,
              borderRadius: BorderRadius.circular(16),
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
              toY: 30,
              width: 30,
              color: bColorOne,
              borderRadius: BorderRadius.circular(16),
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
              toY: 50,
              width: 30,
              color: bColorOne,
              borderRadius: BorderRadius.circular(16),
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
              toY: 20,
              width: 30,
              color: bColorOne,
              borderRadius: BorderRadius.circular(16),
            )
          ],
          showingTooltipIndicators: [0],
        ),
      ];
}
