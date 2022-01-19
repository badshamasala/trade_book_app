import 'package:flutter/material.dart';
import 'package:flutter_application_1/delete/data.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/news/news.dart';
import 'package:flutter_application_1/screens/hdfc_bank.dart';
import 'package:flutter_application_1/screens/indices.dart';
import 'package:flutter_application_1/screens/stock_action.dart';
import 'package:flutter_application_1/screens/world_market.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'delete/chat.dart';
/* import 'delete/dismissible_widget.dart';
import 'delete/utils.dart'; */

class HomeBest extends StatefulWidget {
  const HomeBest({Key? key}) : super(key: key);

  @override
  _HomeBestState createState() => _HomeBestState();
}

class _HomeBestState extends State<HomeBest> {
  List<Chat> items = List.of(Data.chats);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                buildSearchField(),
                Row(
                  children: [
                    Container(
                      /*  color: Colors.blue, */
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        'World Market',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WorldMarket()));
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(color: appcolor),
                        ))
                  ],
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
                               /*  boxShadow: [
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
                                ], */
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
                /*   SizedBox(height: 10), */
                Row(
                  children: [
                    Container(
                        height: 45,
                        /*     color: Colors.green, */
                        padding: const EdgeInsets.all(7),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Indices()));
                            },
                            child: const Text(
                              'Indices >',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ))),
                    const SizedBox(
                      width: 170,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            items = List.of(Data.chats);
                          });
                        },
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          size: 20,
                        )),
                  ],
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: items.length,
                  /*  separatorBuilder: (context, index) => Divider(), */
                  itemBuilder: (context, index) {
                    final item = items[index];

                    return Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      secondaryActions: <Widget>[
                        IconSlideAction(
                          caption: 'Delete',
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () => onDismissed(index,SlidableAction.delete),
                        ),
                      ],
                      child: buildListTile(item),
                    );
                  },
                ),
                Row(
                  children: [
                    Container(
                      /*  color: Colors.blue, */
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        'Stock Action',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const StockAction()));
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(color: appcolor),
                        ))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  width: 90,
                                  child: Text(
                                    'Top Gainers',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  width: 65,
                                  child: const Text(
                                    'Price',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Container(
                                  width: 60,
                                  child: const Text('Gain(%)',
                                      style: TextStyle(fontSize: 17)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Wipro',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text('NSE')
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 64),
                                const Text(
                                  '\u{20B9}${12345.99}',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  children: [
                                    const Text('\u{20B9}${12345.99}',
                                        style: TextStyle()),
                                    const Text(
                                      '+1.23%',
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text(
                                        'TATA',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text('BSE')
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 64),
                                const Text(
                                  '\u{20B9}${12345.99}',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  children: [
                                    const Text('\u{20B9}${12345.99}',
                                        style: TextStyle()),
                                    const Text(
                                      '+1.23%',
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Vodaf',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text('NSE')
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 64),
                                const Text(
                                  '\u{20B9}${12345.99}',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  children: [
                                    const Text('\u{20B9}${12345.99}',
                                        style: TextStyle()),
                                    const Text(
                                      '+1.23%',
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text(
                                        'HDFC',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text('BSE')
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 64),
                                const Text(
                                  '\u{20B9}${12345.99}',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  children: [
                                    const Text('\u{20B9}${12345.99}',
                                        style: TextStyle()),
                                    const Text(
                                      '+1.23%',
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  width: 90,
                                  child: Text(
                                    'Top Losers',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  width: 65,
                                  child: const Text(
                                    'Price',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Container(
                                  width: 60,
                                  child: const Text('Gain(%)',
                                      style: TextStyle(fontSize: 17)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Wipro',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text('NSE')
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 64),
                                const Text(
                                  '\u{20B9}${12345.99}',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  children: [
                                    const Text('\u{20B9}${12345.99}',
                                        style: TextStyle()),
                                    const Text(
                                      '+1.23%',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text(
                                        'TATA',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text('BSE')
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 64),
                                const Text(
                                  '\u{20B9}${12345.99}',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  children: [
                                    const Text('\u{20B9}${12345.99}',
                                        style: TextStyle()),
                                    const Text(
                                      '+1.23%',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Vodaf',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text('NSE')
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 64),
                                const Text(
                                  '\u{20B9}${12345.99}',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  children: [
                                    const Text('\u{20B9}${12345.99}',
                                        style: TextStyle()),
                                    const Text(
                                      '+1.23%',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text(
                                        'HDFC',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text('BSE')
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 64),
                                const Text(
                                  '\u{20B9}${12345.99}',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  children: [
                                    const Text('\u{20B9}${12345.99}',
                                        style: TextStyle()),
                                    const Text(
                                      '+1.23%',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(color: Colors.grey),
                      ),
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            width: 250,
                            child: Text(
                              'My Porfolio',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              width: 250,
                              child: const Text(
                                'Create an account to start investing',
                                style: TextStyle(fontSize: 15),
                              )),
                        ],
                      ),
                      width: 290,
                      height: 110,
                    ),
                    Container(
                      height: 1.1 * (MediaQuery.of(context).size.height / 20),
                      width: 5 * (MediaQuery.of(context).size.width / 10),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, primary: btncolor),
                        onPressed: () {
                          /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewOtp())); */
                        },
                        child: Text(
                          "Creat Now",
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: MediaQuery.of(context).size.height / 40,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      /*  color: Colors.blue, */
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        'SIP/TradeBook Bunch',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WorldMarket()));
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(color: appcolor),
                        ))
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      height: 1.1 * (MediaQuery.of(context).size.height / 20),
                      width: 7 * (MediaQuery.of(context).size.width / 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Calculate for',
                          /*  labelText: 'Calculate for', */

                          /*    prefixIcon: const Icon(
              Icons.phone_android,
              color: primaryColorOfApp,
            ), */
                          filled: true,
                          fillColor: const Color(0xFFEEEEF3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              width: 1,
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, primary: btncolor),
                      onPressed: () {},
                      child: Text(
                        "Check",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontSize: MediaQuery.of(context).size.height / 40,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                          child: Column(
                        children: [
                          Row(
                            children: const [
                              Image(
                                image: AssetImage('assets/axis.jpg'),
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(width: 5),
                              Text('Axis Blue Fund direct Plan Growth',
                                  style: TextStyle(fontSize: 15)),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 200,
                                      height: 13,
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 60,
                                      height: 13,
                                      color: Colors.indigoAccent.shade700,
                                      child: Text(
                                        '\u{20B9}${1000}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Text('1Y')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 200,
                                      height: 13,
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 80,
                                      height: 13,
                                      color: Colors.indigoAccent.shade700,
                                      child: Text(
                                        '\u{20B9}${1000}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Text('1Y')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 200,
                                      height: 13,
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 100,
                                      height: 13,
                                      color: Colors.indigoAccent.shade700,
                                      child: Text(
                                        '\u{20B9}${1000}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Text('1Y')
                            ],
                          ),
                        ],
                      )),
                      Card(
                          child: Column(
                        children: [
                          Row(
                            children: const [
                              Image(
                                image: AssetImage('assets/nipon.jpeg'),
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(width: 5),
                              Text('Nipon Blue Fund direct Plan Growth',
                                  style: TextStyle(fontSize: 15)),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 200,
                                      height: 13,
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 60,
                                      height: 13,
                                      color: Colors.indigoAccent.shade700,
                                      child: Text(
                                        '\u{20B9}${1000}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Text('1Y')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 200,
                                      height: 13,
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 80,
                                      height: 13,
                                      color: Colors.indigoAccent.shade700,
                                      child: Text(
                                        '\u{20B9}${1000}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Text('1Y')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 200,
                                      height: 13,
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Container(
                                      width: 100,
                                      height: 13,
                                      color: Colors.indigoAccent.shade700,
                                      child: Text(
                                        '\u{20B9}${1000}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Text('1Y')
                            ],
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      /*  color: Colors.blue, */
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        'Top News',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 163,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const News()));
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(color: appcolor),
                        ))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.grey.shade300,
                          width: 240,
                          height: 70,
                          child: const ListTile(
                            leading: Image(
                              image: AssetImage('assets/map.png'),
                            ),
                            title: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "The Secret to successful \nlanguage learning",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.grey.shade300,
                          width: 240,
                          height: 70,
                          /*   child: Text('gsgsgsgg \nsssbbs \nsgsgsg \nvavvava \nsgsgsgs \nggggas') */
                          child: const ListTile(
                            leading: Image(
                              image: AssetImage('assets/graph1.png'),
                            ),
                            title: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "The Secret to successful \nlanguage learning",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.grey.shade300,
                          width: 240,
                          height: 70,
                          /*   child: Text('gsgsgsgg \nsssbbs \nsgsgsg \nvavvava \nsgsgsgs \nggggas') */
                          child: const ListTile(
                            leading: Image(
                              image: AssetImage('assets/man.png'),
                            ),
                            title: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "The Secret to successful \nlanguage learning",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(color: Colors.grey),
                      ),
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            width: 250,
                            child: Text(
                              'Contract Book',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              width: 250,
                              child: const Text(
                                'Content',
                                style: TextStyle(fontSize: 15),
                              )),
                        ],
                      ),
                      width: 290,
                      height: 110,
                    ),
                    Container(
                      height: 1.1 * (MediaQuery.of(context).size.height / 20),
                      width: 5 * (MediaQuery.of(context).size.width / 10),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, primary: btncolor),
                        onPressed: () {
                          /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewOtp())); */
                        },
                        child: Text(
                          "View",
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: MediaQuery.of(context).size.height / 40,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildSearchField() {
    const color = Colors.grey;

    return Container(
      /*  color: Colors.blue, */
      height: 50,
      padding: const EdgeInsets.all(8),
      child: TextField(
        onTap: () {
          final results = showSearch(context: context, delegate: Banksearch());
        },
        style: const TextStyle(color: color),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.all(0),
          hintText: 'Search Stocks',
          hintStyle: const TextStyle(color: color),
          prefixIcon: const Icon(Icons.search, color: color),
          filled: true,
          fillColor: Colors.white12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.8)),
          ),
        ),
      ),
    );
  }
   void onDismissed(int index,SlidableAction action){
      setState(()=>items.removeAt(index));
    }
}

class Banksearch extends SearchDelegate<String> {
  final banks = [
    'HDFC',
    'ICICI',
    'AXIS',
    'BARODA',
  ];
  final recentBanks = [
    'HDFC',
    'ICICI',
    'AXIS',
  ];
  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, '');
              } else {
                query = '';
              }
            },
            icon: Icon(Icons.clear))
      ];
  @override
  Widget buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, ''), icon: Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) => HDFC();

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentBanks
        : banks.where((city) {
            final cityLower = city.toLowerCase();
            final queryLower = query.toLowerCase();

            return cityLower.startsWith(queryLower);
          }).toList();

    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          onTap: () {
            query = suggestion;
            showResults(context);
          },
          leading: Icon(Icons.comment_bank),
          title: Text(suggestion),
        );
      });

    
}



Widget buildListTile(Chat item) => Card(
        child: ListTile(
      leading: Text(
        item.urlAvatar,
        style: TextStyle(),
      ),
      title: Text(
        item.username,
        style: TextStyle(color: Colors.red),
        textAlign: TextAlign.center,
      ),
      trailing: Text(
        item.message,
        style: TextStyle(),
      ),
      onTap: () {},
    ));
    
    enum SlidableAction{delete}
 