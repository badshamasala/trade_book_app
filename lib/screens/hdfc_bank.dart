import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/candel_chart.dart';

class _SalesData {
  final int year;
  final int sales;

  _SalesData(this.year, this.sales);
  // Returns Jan.1st of that year as date.
  DateTime get date => DateTime(year);
}

/// Generate some random data.
List<_SalesData> _genRandData() {
  final random = Random();
  // Returns an increasing series with some fluctuations.
  return [
    for (int i = 2005; i < 2020; ++i)
      _SalesData(i, (i - 2000) * 40 + random.nextInt(100)),
  ];
}

class HDFC extends StatefulWidget {
  const HDFC({Key? key}) : super(key: key);

  @override
  _HDFCState createState() => _HDFCState();
}

class _HDFCState extends State<HDFC> {
  final bool _animate = true;
  final bool _defaultInteractions = true;
  final bool _includeArea = true;
  final bool _includePoints = true;
  final bool _stacked = true;
  final charts.BehaviorPosition _legendPosition =
      charts.BehaviorPosition.bottom;

  // Data to render.
  late List<_SalesData> _series1, _series2;

  @override
  void initState() {
    super.initState();
    _series1 = _genRandData();
    _series2 = _genRandData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*   appBar: AppBar(
        title: Text('hdfc',style: TextStyle(color: Colors.black),),
      ), */
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(children: [
                Container(
                  padding: EdgeInsets.all(9),
                  child: Column(
                    children: [
                      Text('\u{20B9}${1150.12}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text(
                        '(+5.34)',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 120),
                Container(
                  height: 23,
                  width: 23,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Container(
                  height: 23,
                  width: 23,
                  color: appcolor,
                ),
                SizedBox(width: 15),
                Icon(Icons.share)
              ]),
              CandelChart(),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 40,
                    child: Text(
                      '1D',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: appcolor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 40,
                    child: Text(
                      '5D',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 40,
                    child: Text(
                      '1M',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 40,
                    child: Text(
                      '1Y',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 40,
                    child: Text(
                      '5Y',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 40,
                    height: 30,
                    padding: EdgeInsets.all(2),
                    child: Icon(Icons.code),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 290,
                child: Text('Set price alert',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 45,
                    child: Text(
                      '-10%',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 40,
                    child: Text(
                      '-5%',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 40,
                    child: Text(
                      '+5%',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 45,
                    child: Text(
                      '+10%',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 30,
                    width: 80,
                    child: Text(
                      'Custom',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: 290,
                child: Text('Key Statistics',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Previous Close',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 90),
                        Text('\u{20B9}${1000.12}',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Open',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 167),
                        Text('\u{20B9}${1100.12}',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Volume',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 150),
                        Text('23.45M',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Avg.Volume(3M)',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 77),
                        Text('14.99M',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('P/E Ratio(TTM)',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 85),
                        Text('45.65M',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Market Cap',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 120),
                        Text('457.65',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Beta (5Y Monthly)',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 90),
                        Text('-',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Forward Diviend Yield',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 60),
                        Text('-',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Earnings Date',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 90),
                        Text('2/22-2/28',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                height: 50,
                child: Card(
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('1Y Target Est',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                        SizedBox(width: 125),
                        Text('-',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    )),
              ),
              Container(
                /*  color: Colors.blue, */
                padding: EdgeInsets.all(8),
                width: 290,
                child: const Text(
                  'People Also Search',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(width: 5),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                const BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('ICICI', style: TextStyle()),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('\u{20B9}${2313.86}'),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 17,
                                  ),
                                  Text(
                                    '(+2.77)',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.trending_up,
                                    color: Colors.green,
                                    size: 19,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                const BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('Wipro', style: TextStyle()),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('\u{20B9}${2313.86}'),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 17,
                                  ),
                                  Text(
                                    '(-12.77)',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.trending_down,
                                    color: Colors.red,
                                    size: 19,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                const BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('Vodafone', style: TextStyle()),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('\u{20B9}${2313.86}'),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 17,
                                  ),
                                  Text(
                                    '(+1.77)',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.trending_up,
                                    color: Colors.green,
                                    size: 19,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                const BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('We3Tec', style: TextStyle()),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('\u{20B9}${2313.86}'),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 17,
                                  ),
                                  Text(
                                    '(+2.77)',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.trending_up,
                                    color: Colors.green,
                                    size: 19,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('NSE', style: TextStyle()),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('\u{20B9}${2313.86}'),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 17,
                                  ),
                                  Text(
                                    '(+2.77)',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.trending_up,
                                    color: Colors.green,
                                    size: 19,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ])),
    Container(
                /*  color: Colors.blue, */
                padding: EdgeInsets.all(8),
                width: 300,
                child: const Text(
                  'Upcoming Events',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                     SizedBox(width: 20),
                  Column(
                    children: [
                   
                      Container(
                        width: 125,
                        child: Text('22 Feb 2022')),
                      Container(
                        width: 125,
                    
                        child: Text('Event Earning Call')),
                      Container(
                  
                        child: Text('10 days to Earning call'))
                  ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    children: [
                      Icon(Icons.alarm,color: appcolor,),
                      Text('Set Reminder',style: TextStyle(color: appcolor),)
                    ],
                  )
                ],
              ),
               Row(
              children: [
                Container(
                  /*  color: Colors.blue, */
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'Recent Events',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                TextButton(
                    onPressed: () {
                     /*  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WorldMarket())); */
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(color: appcolor),
                    ))
              ],
            ),
            Container(
              width: 300,
              child: Text('1 JAN 2022')),
            Container(
              width: 300,
              child: Text('10-Quaterly Report')),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: Text('25 Dec 2021')),
 Container(
   width: 300,
   child: Text('8K:Results of Operational and Financial')),
 Container(
   width: 300,
   child: Text('Condition')),
    SizedBox(height: 10),
     Container(
              width: 300,
              child: Text('15 Dec 2021')),
 Container(
   width: 300,
   child: Text('8K:Results of Operational and Financial')),
 Container(
   width: 300,
   child: Text('Condition')),

            ],
          )
          ),
    );
  }
}
