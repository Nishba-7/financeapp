import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: SfCartesianChart(
          primaryXAxis: const CategoryAxis(),
          series: <SplineSeries<SalesData, String>>[
            SplineSeries<SalesData, String>(
              color: const Color.fromARGB(255, 47, 125, 121),
              width: 3,
              dataSource: <SalesData>[
                SalesData(sales: 100, year: 'mon'),
                SalesData(sales: 20, year: 'tue'),
                SalesData(sales: 70, year: 'wed'),
                SalesData(sales: 50, year: 'sat'),
                SalesData(sales: 10, year: 'sun'),
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
            )
          ]),
    );
  }
}

class SalesData {
  final String year;
  final int sales;
  SalesData({required this.year, required this.sales});
}
