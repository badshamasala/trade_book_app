import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/finish_screen.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final fieldText = TextEditingController();
  final fieldnametext = TextEditingController();
  void cleartext() {
    fieldnametext.clear();
    setState(() {});
  }

  void clearText() {
    fieldText.clear();
    setState(() {});
  }

  FocusNode myFocusNode = FocusNode();
  late String email, password;
  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Text(
            'complete sign up in just 2 steps',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 31,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildnewpassword() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        controller: fieldnametext,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {});
        },
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'new password',
          labelText: 'new password',
          labelStyle: TextStyle(
              color: myFocusNode.hasFocus ? Colors.black : Colors.black),
          prefixIcon:  const Icon(
            Icons.lock,
            color: appcolor,
          ),
          filled: true,
          fillColor: const Color(0xFFEEEEF3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          suffixIcon: fieldnametext.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: appcolor,
                  ),
                  onPressed: cleartext,
                ),
        ),
      ),
    );
  }

  Widget _buildConfirmPassword() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        controller: fieldText,
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {});
        },
        decoration: InputDecoration(
          hintText: 'confirm password',
          labelText: 'confirm password',
          labelStyle: TextStyle(
              color: myFocusNode.hasFocus ? Colors.black : Colors.black),
          prefixIcon:  const Icon(
            Icons.lock,
            color: appcolor,
          ),
          filled: true,
          fillColor: const Color(0xFFEEEEF3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          suffixIcon: fieldText.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon:  const Icon(
                    Icons.clear,
                    color:appcolor,
                  ),
                  onPressed: clearText,
                ),
        ),
      ),
    );
  }

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

  Widget _buildNextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.3 * (MediaQuery.of(context).size.height / 20),
          width: 7 * (MediaQuery.of(context).size.width / 10),
          margin: const EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary:btncolor,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FinishScreen()));
            },
            child: Text(
              "Next",
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

  Widget _buildContainer() {
    return SingleChildScrollView(
      child: Row(
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "set new password",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  _buildnewpassword(),
                  _buildConfirmPassword(),
                  const SizedBox(height: 20),
                  _buildNextButton(),
                  /* _buildOrRow(), */
                  /* _buildSocialBtnRow(), */
                ],
              ),
            ),
          ),
        ],
      ),
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
                  /*   color: Colors.indigoAccent.shade700, */
                  gradient: LinearGradient(
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildLogo(),
                  _buildContainer(),
                  /* _buildSignUpBtn(), */
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
