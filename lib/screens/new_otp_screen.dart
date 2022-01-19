import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/dummy/newhome.dart';



class NewOtp extends StatefulWidget {
  const NewOtp({Key? key}) : super(key: key);

  @override
  _NewOtpState createState() => _NewOtpState();
}

class _NewOtpState extends State<NewOtp> {
  bool value = false;
  late String email, password;

  /* Widget _buildCheckbox() => ListTile(
        leading: Checkbox(
          activeColor: Colors.black,
         /*  checkColor: Colors.green,
          hoverColor: Colors.blue, */
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value!;
              });
            }),
        title: const Text(
          'Do You Agree ours terms and condition ?',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ); */

  /* Widget _buildnewpassword() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: const InputDecoration(
          /*   prefixIcon: Icon(
              Icons.email,
              color: Colors.blue,
            ), */
            labelText: 'new password'),
      ),
    );
  } */

  /*  Widget _buildConfirmPassword() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: const InputDecoration(
          /* prefixIcon: Icon(
            Icons.lock,
            color: Colors.blue,
          ), */
          labelText: 'confirm new password',
        ),
      ),
    );
  } */

  /*  Widget _buildForgetPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: const Text("Forgot Password"),
        ),
      ],
    );
  } */

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
                  MaterialPageRoute(builder: (context) => const MyHomePage()));
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

  /* Widget _buildOrRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: const Text(
            '- OR -',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  } */

  /* Widget _buildSocialBtnRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: mainColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0)
              ],
            ),
            child: Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  } */
  Widget _buildOtp(){
      return Container(
        padding: const EdgeInsets.all(16),
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

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
            /*   mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, */
              children: <Widget>[
                /* Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "set new password",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 30,
                      ),
                    ),
                  ],
                ), */
             /*    const SizedBox(height: 10), */
                /* _buildnewpassword(), */
                /* _buildConfirmPassword(), */
          /*       _buildCheckbox(), */
                const SizedBox(height: 20),
                _buildOtp(),
                _buildConfirmButton(),
                /* _buildOrRow(), */
                /* _buildSocialBtnRow(), */
              ],
            ),
          ),
        ),
      ],
    );
  }

  /* Widget _buildSignUpBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: TextButton(
            onPressed: () {Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));},
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Dont have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
  } */

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xfff2f3f7),
        body: Stack(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: const BoxDecoration(
               /*    color: Colors.blueAccent.shade700, */
                 gradient:  LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 0.9],
                    colors: [
                       Color(0XFF3151E0),
                      Color(0XFF2E3192),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /* _buildLogo(), */
                _buildContainer(),
                /* _buildSignUpBtn(), */
              ],
            )
          ],
        ),
      ),
    );
  }
}
