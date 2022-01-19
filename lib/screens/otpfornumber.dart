import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/setpassfirsttime.dart';

class OtpforNum extends StatefulWidget {
  const OtpforNum({Key? key}) : super(key: key);

  @override
  _OtpforNumState createState() => _OtpforNumState();
}

class _OtpforNumState extends State<OtpforNum> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xfff2f3f7),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildLogo(),
              /* _buildContainer(), */
                _buildOtp(),
                _buildConfirmButton(),

              /* _buildSignUpBtn(), */
            ],
          )),
    );
  }

 

  Widget _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 75,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.green),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
Widget _buildLogo() {
    return Column(
      
      children: [
        
          const Text(
            'OTP Verification',
            style: TextStyle(
             fontSize: 30,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              'OTP Sent to registered mobile number 8689880061',
              style: TextStyle(
              fontSize: 15
               
              ),
            ),
          ),
        
      ],
    );
  }
  Widget _buildOtp() {
    return Container(

      padding: const EdgeInsets.all(38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _textFieldOTP(first: true, last: false),
          _textFieldOTP(first: false, last: false),
          _textFieldOTP(first: false, last: false),
          _textFieldOTP(first: false, last: true),
        ],
      ),
    );
  }

  Widget _buildConfirmButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.3 * (MediaQuery.of(context).size.height / 20),
          width: 7 * (MediaQuery.of(context).size.width / 10),
          margin: const EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: btncolor,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SetPassword1()));
            },
            child: Text(
              "Confirm",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }
}