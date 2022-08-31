import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:flutter/material.dart';
class Chart extends StatefulWidget {
  Chart({Key? key}) : super(key: key);
  @override
  State<Chart> createState() => _ChartState();
}
class _ChartState extends State<Chart> {
   List<_SalesData> data = [
    _SalesData('Jan', 5),
    _SalesData('Feb', 80),
    _SalesData('Mar', 90),
    _SalesData('Apr', 2),
    _SalesData('May', 60)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Center(
          child: SizedBox(
          height: 100,
          width: 120,
            child: SfCartesianChart(
              
                primaryXAxis: CategoryAxis(
                  isVisible: false
                ),
                // Chart title
               
             
                legend: Legend(isVisible: false),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<_SalesData, String>>[
                 
                      LineSeries<_SalesData, String>(
                        animationDuration: 2500,
                      dataSource: data,
                       xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                    
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: false))
                ]),
          ),
        ));
  }
}
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}