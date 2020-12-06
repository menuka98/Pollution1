import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Assess extends StatefulWidget {
  final Widget child;

  Assess({Key key, this.child}) : super(key: key);

  _Assess createState() => _Assess();
}

class _Assess extends State<Assess> {
  List<charts.Series<Paper, String>> _seriesPieData;

  _generateData() {
    var pieData = [
      new Paper('CO2', 30, Color(0xff00b9f1)),
      new Paper('CO', 30, Color(0xff990099)),
      new Paper('CH4', 30, Color(0xff00ca41)),
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Text(
            '',
            style: TextStyle(color: Colors.black),
          ),
          // leading: Icon(
          //   Icons.menu,
          //   color: Colors.black,
          // ),
          actions: <Widget>[
            InkWell(
              onTap: picturePressed,
              child: Container(
                width: 55,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/location1.png'))),
                padding: EdgeInsets.all(20.0),
              ),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 328,
                                  height: 225,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(
                                            0,
                                            4,
                                          ),
                                          blurRadius: 8,
                                        )
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: charts.PieChart(_seriesPieData,
                                        animate: true,
                                        animationDuration: Duration(seconds: 2),
                                        behaviors: [
                                          new charts.DatumLegend(
                                            outsideJustification: charts
                                                .OutsideJustification
                                                .endDrawArea,
                                            horizontalFirst: false,
                                            desiredMaxRows: 2,
                                            cellPadding: new EdgeInsets.only(
                                                right: 4.0, bottom: 4.0),
                                            entryTextStyle:
                                                charts.TextStyleSpec(
                                                    color: charts
                                                        .MaterialPalette
                                                        .purple
                                                        .shadeDefault,
                                                    fontFamily: 'Georgia',
                                                    fontSize: 11),
                                          )
                                        ],
                                        defaultRenderer:
                                            new charts.ArcRendererConfig(
                                                arcWidth: 30,
                                                arcRendererDecorators: [
                                              new charts.ArcLabelDecorator(
                                                  labelPosition: charts
                                                      .ArcLabelPosition.inside)
                                            ])),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Wrap(
//                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              spacing: 100,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
                                  child: Container(
                                      width: 295,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xffF0A1A1),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: Container(
                                          width: 55,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'assets/images/bad.png'))),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Wrap(
//                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              spacing: 15,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
                                  child: Container(
                                      width: 295,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF0A1A1),
                                        border: Border.all(
                                          color: Color(0xffF0A1A1),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(40.0),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Text('Health Effects',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.normal))
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Text('Skin Diseases',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal))
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Text('Heath Failures',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal))
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Text('Heart Attacks',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal))
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
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

  void picturePressed() {
    Navigator.pushNamed(context, "/Map");
  }
}

class Paper {
  String papername;
  int marks;
  Color colorval;

  Paper(this.papername, this.marks, this.colorval);
}
