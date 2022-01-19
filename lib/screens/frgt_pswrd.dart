import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/otpforsetpass.dart';


class ForgotPassword1 extends StatefulWidget {
  const ForgotPassword1({Key? key}) : super(key: key);

  @override
  _ForgotPassword1State createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {
  final fieldemail = TextEditingController();

  void clearText() {
    fieldemail.clear();
    setState(() {});
  }

  FocusNode myFocusNode = FocusNode();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              width: 300,
              padding: const EdgeInsets.fromLTRB(20, 110, 0, 0),
              /*  color: Colors.green, */
              child: const Text(
                'Recover Your Password',
                style: TextStyle(fontSize: 25),
              )
              ),
              const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              controller: fieldemail,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: 'Email id',
                labelText: 'Email id',
                labelStyle: TextStyle(
                    color: myFocusNode.hasFocus ? Colors.black : Colors.black),
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
                suffixIcon: fieldemail.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: const Icon(
                          Icons.clear,
                          color: Color(0xFFFF2933),
                        ),
                        onPressed: clearText,
                      ),
              ),
            ),
          ),
        const SizedBox(height: 30),
          Container(
            height: 1.1 * (MediaQuery.of(context).size.height / 20),
            width: 6 * (MediaQuery.of(context).size.width / 10),
            margin: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 15, primary: appcolor),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Otp()));
              },
              child: Text(
                "Send OTP",
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
    )));
  }
}
