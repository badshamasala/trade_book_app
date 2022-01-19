import 'package:flutter/material.dart';
import 'package:flutter_application_1/menupages/addfund.dart';
import 'package:flutter_application_1/menupages/buyplan.dart';
import 'package:flutter_application_1/menupages/contractbook.dart';
import 'package:flutter_application_1/menupages/equitybook.dart';
import 'package:flutter_application_1/menupages/home.dart';
import 'package:flutter_application_1/menupages/otherfeatures.dart';
import 'package:flutter_application_1/menupages/tradebookbunch.dart';
import 'package:flutter_application_1/menupages/tradebookupgrade.dart';
import 'package:flutter_application_1/menupages/userpage.dart';
import 'package:flutter_application_1/menupages/yourportfolio.dart';
import 'package:flutter_application_1/screens/sign_in.dart';


class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 5);

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const name = 'Rashid Khan';
    const email = 'krashid@gmail.com';
    const urlImage =
        'https://static-koimoi.akamaized.net/wp-content/new-galleries/2021/11/salman-khan-gets-candid-about-stardom-says-we-will-not-leave-it-for-the-younger-generation-to-take-it-easy-001.jpg';

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.73,
      child: Drawer(
        
        child: Material(
          
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UserPage(
                    name: 'Rashid Khan',
                    urlImage: urlImage,
                  ),
                )),
              ),
              Container(
                padding: padding,
                child: Column(
                  children: [
                   /*  const SizedBox(height: 1), */
                    /*      buildSearchField(),
                    const SizedBox(height: 14), */
                    buildMenuItem(
                      
                      text: 'Home',
                      icon: Icons.people,
                      onClicked: () => selectedItem(context, 0),
                    ),
                   /*  const SizedBox(height: 0.2), */
                    buildMenuItem(
                      text: 'Add Fund',
                      icon: Icons.monetization_on,
                      onClicked: () => selectedItem(context, 1),
                    ),
                   /*  const SizedBox(height: 3), */
                    buildMenuItem(
                      text: 'Buy Plan',
                      icon: Icons.add_circle_outline,
                      onClicked: () => selectedItem(context, 2),
                    ),
                   /*  const SizedBox(height: 3), */
                    buildMenuItem(
                      text: 'Your Portfolio',
                      icon: Icons.equalizer,
                      onClicked: () => selectedItem(context, 3),
                    ),
                   /*  const SizedBox(height: 4), */
                    const Divider(color: Colors.black),
                   /*  const SizedBox(height: 4), */
                    buildMenuItem(
                      text: 'TradeBook Bunch',
                      icon: Icons.add_to_drive,
                      onClicked: () => selectedItem(context, 4),
                    ),
                   /*  const SizedBox(height: 6), */
                    buildMenuItem(
                      text: 'Equity Book',
                      icon: Icons.track_changes,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    buildMenuItem(
                      text: 'Contract Book',
                      icon: Icons.menu_book,
                      onClicked: () => selectedItem(context, 6),
                    ),
                    buildMenuItem(
                      text: 'TradeBook Upgrade',
                      icon: Icons.upgrade_rounded,
                      onClicked: () => selectedItem(context, 7),
                    ),
                    buildMenuItem(
                      text: 'Other Features',
                      icon: Icons.settings,
                      onClicked: () => selectedItem(context, 8),
                    ),
                    buildMenuItem(
                      text: 'Logout',
                      icon: Icons.logout,
                      onClicked: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 20)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
             /*  const Spacer(), */
            /*   const CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              ) */
            ],
          ),
        ),
      );

  /*  Widget buildSearchField() {
    const color = Colors.white;

    return TextField(
      style: const TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: color.withOpacity(0.8)),
        ),
      ),
    );
  } */

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.black;
    const hoverColor = Colors.red;

    return ListTile(
      
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AddFund(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const BuyPlan(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const YourPortfolio(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const TradeBookBunch(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const EquityBook(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ContractBook(),
        ));
        break;
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const TradeBookUpgrade(),
        ));
        break;
      case 8:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const OtherFeatures(),
        ));
    }
  }
}
