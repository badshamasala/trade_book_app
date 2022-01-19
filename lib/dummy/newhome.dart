import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/flutterlibrary.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/menupages/addfund.dart';
import 'package:flutter_application_1/menupages/buyplan.dart';
import 'package:flutter_application_1/menupages/contractbook.dart';
import 'package:flutter_application_1/menupages/equitybook.dart';
import 'package:flutter_application_1/menupages/home.dart';
import 'package:flutter_application_1/menupages/otherfeatures.dart';
import 'package:flutter_application_1/menupages/tradebookbunch.dart';
import 'package:flutter_application_1/menupages/tradebookupgrade.dart';
import 'package:flutter_application_1/menupages/yourportfolio.dart';
import 'package:flutter_application_1/screens/sign_in.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var drawerKey = GlobalKey<SwipeDrawerState>();
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
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 150),
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
                        elevation: 15, primary:btncolor),
                    onPressed: () {
                      entry.remove();
                    },
                    child: Text(
                      "BUY",
                      style: TextStyle(
                        color: Colors.white,
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
                        color: Colors.white,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SwipeDrawer(
        radius: 42,
        key: drawerKey,
        hasClone: false,
        bodyBackgroundPeekSize: 42,
        backgroundColor: Colors.white,
        drawer: buildDrawer(),
        child: buildBody(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Image(image: AssetImage('assets/splashicon.png')),
        backgroundColor: Colors.white,
        onPressed: () {
          Overlay.of(context)?.insert(entry);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
              
            ),
          
            IconButton(
              icon: const Icon(Icons.moving),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.article),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.card_giftcard),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget buildDrawer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            /*  backgroundImage: AssetImage('assets/applogo.png'), */
          ),
          title: Text(
            'Rashid Khan',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(
          color: Colors.black,
          indent: 20,
          endIndent: 10,
        ),
        SizedBox(
          height: 42,
          child: ListTile(
            title: const Text('Home'),
            trailing: const Icon(Icons.home, color: Colors.black),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
        ),
        /*  Divider(
          indent: 42,
          endIndent: 42,
          color: Colors.black,
          height: 5,
        ), */
        SizedBox(
          height: 42,
          child: ListTile(
            title: const Text('Add Fund'),
            trailing: const Icon(
              Icons.monetization_on,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddFund()));
            },
          ),
        ),
        /*    Divider(
          indent: 42,
          endIndent: 42,
          color: Colors.black,
        ), */
        SizedBox(
          height: 42,
          child: ListTile(
            title: const Text('Buy Plan'),
            trailing: const Icon(Icons.add_circle_outline, color: Colors.black),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BuyPlan()));
            },
          ),
        ),
        /*   Divider(
          indent: 42,
          endIndent: 42,
          color: Colors.black,
        ), */
        SizedBox(
          height: 42,
          child: ListTile(
            title: const Text('Your Portfolio'),
            trailing: const Icon(Icons.equalizer, color: Colors.black),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const YourPortfolio()));
            },
          ),
        ),
        /*  Divider(
          indent: 42,
          endIndent: 42,
          color: Colors.black,
        ), */
        SizedBox(
          height: 42,
          child: ListTile(
            title: const Text('TradeBook Bunch'),
            trailing: const Icon(Icons.add_to_drive, color: Colors.black),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TradeBookBunch()));
            },
          ),
        ),
        /*   Divider(
          indent: 42,
          endIndent: 42,
          color: Colors.black,
        ), */
        SizedBox(
          height: 42,
          child: ListTile(
            title: const Text('Equity Book'),
            trailing: Icon(Icons.track_changes, color: Colors.blue.shade900),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EquityBook()));
            },
          ),
        ),
        /* Divider(
          indent: 42,
          endIndent: 42,
          color: Colors.black,
        ), */
        SizedBox(
          height: 42,
          child: ListTile(
            title: const Text('Contract Book'),
            trailing: Icon(Icons.menu_book, color: Colors.blue.shade900),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContractBook()));
            },
          ),
        ),
        /* Divider(
          indent: 42,
          endIndent: 42,
          color: Colors.black,
        ), */
        SizedBox(
          height: 42,
          child: ListTile(
            title: const Text('Upgrade'),
            trailing: Icon(Icons.upgrade_rounded, color: Colors.blue.shade900),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TradeBookUpgrade()));
            },
          ),
        ),
        SizedBox(
          height: 42,
          child: ListTile(
            title: const Text('Others Features'),
            trailing: Icon(Icons.settings, color: Colors.blue.shade900),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OtherFeatures()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  const StadiumBorder()),
              side: MaterialStateProperty.resolveWith<BorderSide>(
                  (Set<MaterialState> states) {
                final Color color = states.contains(MaterialState.pressed)
                    ? Colors.white
                    : Colors.black;
                return BorderSide(color: color, width: 2);
              }),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignInPage()));
            },
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildBody() {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
            title: const Text(
              'Trade Book',
              style: TextStyle(fontSize: 18),
            ),
            leading: InkWell(
              child: IconButton(
                onPressed: () {
                  if (drawerKey.currentState!.isOpened()) {
                    drawerKey.currentState!.closeDrawer();
                  } else {
                    drawerKey.currentState!.openDrawer();
                  }
                },
                icon: Image.asset(
                  'assets/menuicon.png',
                  color: Colors.white,
                  /*  fit: BoxFit.cover  */
                ),
              ),
            ),
            actions: <Widget>[
              const SizedBox(width: 1),
              IconButton(
                icon: const Icon(
                  Icons.moving,
                  size: 35,
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 1),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 35,
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 1),
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  size: 35,
                ),
                onPressed: () {},
              )
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          /*  Icon(Icons.kitchen, color: Colors.green[500]), */
                          const Text('Bullion',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const Text('4575.5'),
                          Container(
                              color: Colors.green,
                              child: const Text('+0.05%',
                                  style: TextStyle(color: Colors.white))),
                        ],
                      ),
                      Column(
                        children: [
                          /*  Icon(Icons.timer, color: Colors.green[500]), */
                          const Text('Crypto',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const Text('4575.5'),
                          Container(
                              color: Colors.green,
                              child: const Text('+0.05%',
                                  style: TextStyle(color: Colors.white))),
                        ],
                      ),
                      Column(
                        children: [
                          /* Icon(Icons.restaurant, color: Colors.green[500]), */
                          const Text('MBS/CDS',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const Text('4575.5'),
                          Container(
                              color: Colors.green,
                              child: const Text('+0.05%',
                                  style: TextStyle(color: Colors.white))),
                        ],
                      ),
                      Column(
                        children: [
                          /* Icon(Icons.restaurant, color: Colors.green[500]), */
                          const Text('MCX',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const Text('4575.5'),
                          Container(
                              color: Colors.green,
                              child: const Text('+0.05%',
                                  style: TextStyle(color: Colors.white)))
                        ],
                      ),
                    ]),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                  width: 300,
                  child: Text('Indices ', textAlign: TextAlign.start)),
              Card(
                child: Column(
                  children: const [
                    ListTile(
                      title: Text(
                        '---------√///√-------',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w500),
                      ),
                      leading: Text('SENSEX \nDec 17, 1:45',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Text('265.16 \n+1.93%',
                          style: TextStyle(color: Colors.green)),
                    ),
                    /*  const Divider(), */
                    ListTile(
                      title: Text(
                        '---------√///√-------',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                      leading: Text('NIFTY 50 \nDec 17, 1:45',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Text('324.16 \n+1.93%',
                          style: TextStyle(color: Colors.red)),
                    ),
                    ListTile(
                      title: Text(
                        '---------√///√-------',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                      leading: Text('NIFTY BANK\nDec 17, 1:45',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Text('315.16 \n+1.93%',
                          style: TextStyle(color: Colors.red)),
                    ),
                    ListTile(
                      title: Text(
                        '---------√///√---',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w500),
                      ),
                      leading: Text('NIFTY MIDCAP 100 \nDec 17, 1:45',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Text('455.16 \n+1.93%',
                          style: TextStyle(color: Colors.green)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                  width: 300, child: Text('News ', textAlign: TextAlign.start)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.grey.shade300,
                        width: 240,
                        height: 70,
                        /*   child: Text('gsgsgsgg \nsssbbs \nsgsgsg \nvavvava \nsgsgsgs \nggggas') */
                        child: const ListTile(
                          leading: CircleAvatar(
                            /* backgroundColor: Colors.white, */
                            backgroundImage: AssetImage('assets/man.png'),
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
                    Container(
                      color: Colors.grey.shade300,
                      width: 240,
                      height: 70,
                      /*   child: Text('gsgsgsgg \nsssbbs \nsgsgsg \nvavvava \nsgsgsgs \nggggas') */
                      child: const ListTile(
                        leading: CircleAvatar(
                          /*  backgroundColor: Colors.red, */
                          backgroundImage: AssetImage('assets/graph1.png'),
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
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.topCenter,
                      child: const Text('Start Investing Content'),
                      width: 250,
                      height: 80,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    /* height: 1.1 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10), */
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 15, primary: btncolor),
                      onPressed: () {
                        /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewOtp())); */
                      },
                      child: Text(
                        "Start Investment",
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
              Card(
                child: Column(
                  children: const [
                    ListTile(
                      /*   title: Text(
                    '---------√///√-------',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w500),
                  ), */
                      leading: Text('Stock Action',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Text('ALL',
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        '         670.16',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      leading: Text('WIPRO \nDec 17, 1:45',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Text('25.35 \n+1.93%',
                          style: TextStyle(color: Colors.red)),
                    ),
                    /*  const Divider(), */
                    ListTile(
                      title: Text(
                        '         670.16',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      leading: Text('INFOSYS \nDec 17, 1:45',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Text('25.35 \n+1.93%',
                          style: TextStyle(color: Colors.red)),
                    ),
                    ListTile(
                      title: Text(
                        '         670.16',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      leading: Text('INFOSYS\nDec 17, 1:45',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Text('25.35 \n+1.93%',
                          style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
