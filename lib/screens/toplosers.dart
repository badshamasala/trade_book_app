import 'package:flutter/material.dart';
class TopLosers extends StatefulWidget {
  const TopLosers({ Key? key }) : super(key: key);

  @override
  _TopLosersState createState() => _TopLosersState();
}

class _TopLosersState extends State<TopLosers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                const Text('\u{20B9}${12345.99}', style: TextStyle()),
                const Text(
                  '+1.23%',
                  style: TextStyle(color: Colors.red),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}