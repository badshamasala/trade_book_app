import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/notification.dart';
class WidgetHelper extends StatefulWidget {
  const WidgetHelper({ Key? key }) : super(key: key);

  @override
  _WidgetHelperState createState() => _WidgetHelperState();




  AppBar TradeBookAppBar(context){
    return AppBar(
      
      elevation: 0,
         iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text(
          'Trade Book',
          style: TextStyle(
              color: appcolor, fontWeight: FontWeight.bold, fontSize: 20,),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
         
          IconButton(
            icon: const Icon(
              Icons.tonality,
              size: 25,
              /* color: Colors.black */
            ),
            onPressed: () => showModalBottomSheet(
              /* backgroundColor: Color(0xff8c55f6), */
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              context: context,
              builder: (context) => buildSheet(context),
            ),
          ),
         
          IconButton(
            icon:  Icon(
              Icons.notifications_none,
              size: 25,
            /*   color: Colors.black, */
            ),
            onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>   Notification1()));},
          ),
        ],
    );
  }
  Widget buildSheet(context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40,
          
              padding: const EdgeInsets.all(8),
              width: 305,
              child: const Text('My Portfolio',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center)),
          Container(
            padding: EdgeInsets.all(10),
       
            child: Row(
              children: [
                Text('Invested Value',style: TextStyle(fontSize: 20),),
                SizedBox(width: 95),
                 Text('\u{20B9}${53846.76}',style: TextStyle(fontSize: 20))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Current Value',style: TextStyle(fontSize: 20),),
                SizedBox(width: 103),
                 Text('\u{20B9}${50846.76}',style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
          Container(
            padding:EdgeInsets.all(10) ,
            child: Row(
              children: [
                Text('Day P&L',style: TextStyle(fontSize: 20)),
                SizedBox(width: 145),
                 Column(
                   children: [
                     Text('\u{20B9}${12364}',style: TextStyle(fontSize: 20)),
                     Text('-5.78%',style: TextStyle(fontSize: 20,color:Colors.red),)
                   ],
                 )
              ],
            ),
          ),
          const Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.grey,
            thickness: 1,
            height: 5,
          ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
              children: [
                Text('Available Fund',style: TextStyle(fontSize: 20)),
                SizedBox(width: 97),
                 Text('\u{20B9}${4546}',style: TextStyle(fontSize: 20))
              ],
          ),
            ),
        
          const SizedBox(height: 10),
          Container(
            height: 1.1 * (MediaQuery.of(context).size.height / 20),
            width: 7 * (MediaQuery.of(context).size.width / 10),
            margin: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: appcolor,
                side: BorderSide(width: 1.0, color:appcolor,)
              ),
              onPressed: () {},
              child: Text(
                "View",
                style: TextStyle(
                  
                  letterSpacing: 1.5,
                  fontSize: MediaQuery.of(context).size.height / 40,
                ),
              ),
            ),
          )
        ],
      );
}

class _WidgetHelperState extends State<WidgetHelper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}