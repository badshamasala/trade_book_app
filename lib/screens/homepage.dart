import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/bunch.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/dummy/portfolio.dart';
import 'package:flutter_application_1/dummy/position.dart';
import 'package:flutter_application_1/screens/navigation_drawer.dart';
import 'package:flutter_application_1/screens/notification.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late OverlayEntry entry;

  @override
  void initState() {
    super.initState();
    entry = OverlayEntry(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black.withOpacity(0.5),
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 100, 10, 150),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 1.1 * (MediaQuery.of(context).size.height / 20),
                  width: 3 * (MediaQuery.of(context).size.width / 10),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 15, primary: btncolor),
                    onPressed: () {
                      entry.remove();
                    },
                    child: Text(
                      "BUY",
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontSize: MediaQuery.of(context).size.height / 40,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1.1 * (MediaQuery.of(context).size.height / 20),
                  width: 3 * (MediaQuery.of(context).size.width / 10),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 15, primary: btncolor),
                    onPressed: () {
                      entry.remove();
                    },
                    child: Text(
                      "SELL",
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontSize: MediaQuery.of(context).size.height / 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  int index = 0;
  final screens = [
    HomeBest(),
    Portfolio(),
    Position(),
    Bunch(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        elevation: 0,
      
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text(
          'Trade Book',
          style: TextStyle(
              color: appcolor, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          const SizedBox(width: 14),
          IconButton(
            icon: const Icon(
              Icons.tonality,
              size: 25,
            ),
            onPressed: () => showModalBottomSheet(
              /* backgroundColor: Color(0xff8c55f6), */
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              context: context,
              builder: (context) => buildSheet(),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notification1()));
            },
          )
        ],
      ),
      body: screens[index],
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: NavigationBarTheme(
        
        data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 14, fontWeight: FontWeight.w400))),
        child: NavigationBar(
            height: 65,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.moving_outlined),
                  selectedIcon: Icon(Icons.moving),
                  label: 'Portfolio'),
              NavigationDestination(
                  icon: Icon(Icons.article_outlined),
                  selectedIcon: Icon(Icons.article),
                  label: 'Position'),
              NavigationDestination(
                  icon: Icon(Icons.card_giftcard_outlined),
                  selectedIcon: Icon(Icons.card_giftcard),
                  label: 'Trade Bunch')
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      floatingActionButton: FloatingActionButton(
        
        child: Image(
          image: AssetImage('assets/logo.png'),
          height: 35,
          width: 35,
        ),
        backgroundColor: Colors.white,
        onPressed: () {
          Overlay.of(context)?.insert(entry);
        },
      ),
    );
  }

  Widget buildSheet() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10.h,),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'My Portfolio',
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 25.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Invested Value'),
                Text('\u{20B9}${53846.76}')
              ],
            ),
            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Current Value'),
                Text('\u{20B9}${53846.76}')
              ],
            ),
            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Day P&L'),
                Column(
                  
                  children: [
                    Text('\u{20B9}${12364.76}'),
                    Text('-5.78%')
                  ],
                )
              ],
            ),
            Divider(
              indent: 10,
              endIndent: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Availabe Fund'),
                Text('\u{20B9}${4546}')
              ],
            ),
            SizedBox(height: 34.h,),
             SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(appcolor),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 12.h)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w400))),
                      child: const Text('View Portfolio')),
                ),
          ],
        ),
  );
}
