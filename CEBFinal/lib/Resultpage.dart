import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Resultpage extends StatefulWidget {
  final Widget child;

  Resultpage({Key key, this.child}) : super(key: key);

  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<Resultpage> {
  List<charts.Series<Paper, String>> _seriesPieData;

  _generateData() {
    var pieData = [
      new Paper('Paper1', 5, Color(0xff3366cc)),
      new Paper('Paper2', 50, Color(0xff990099)),
      new Paper('Paper3', 45, Color(0xfffdbe19)),
    ];

    _seriesPieData.add(
      charts.Series(
        data: pieData,
        domainFn: (Paper paper, _) => paper.papername,
        measureFn: (Paper paper, _) => paper.marks,
        colorFn: (Paper paper, _) =>
            charts.ColorUtil.fromDartColor(paper.colorval),
        id: 'Daily Task',
        labelAccessorFn: (Paper row, _) => '${row.marks}',
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesPieData = List<charts.Series<Paper, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
//    _getData();
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Assess by Census'),
        ),
        body: Column(
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              charts.PieChart(_seriesPieData,
                                  animate: true,
                                  animationDuration: Duration(seconds: 2),
                                  behaviors: [
                                    new charts.DatumLegend(
                                      outsideJustification: charts
                                          .OutsideJustification.endDrawArea,
                                      horizontalFirst: false,
                                      desiredMaxRows: 2,
                                      cellPadding: new EdgeInsets.only(
                                          right: 4.0, bottom: 4.0),
                                      entryTextStyle: charts.TextStyleSpec(
                                          color: charts.MaterialPalette.purple
                                              .shadeDefault,
                                          fontFamily: 'Georgia',
                                          fontSize: 11),
                                    )
                                  ],
                                  defaultRenderer: new charts.ArcRendererConfig(
                                      arcWidth: 100,
                                      arcRendererDecorators: [
                                        new charts.ArcLabelDecorator(
                                            labelPosition:
                                                charts.ArcLabelPosition.inside)
                                      ])),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Paper {
  String papername;
  int marks;
  Color colorval;

  Paper(this.papername, this.marks, this.colorval);
}
