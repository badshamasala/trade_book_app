import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/frgt_pswrd.dart';
import 'package:flutter_application_1/screens/homepage.dart';
import 'package:flutter_application_1/screens/signup_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final fieldemail = TextEditingController();
  final fieldpassword = TextEditingController();
  
  void clearText() {
    fieldemail.clear();
    setState(() {});
  }

  

  void cleartext() {
    fieldpassword.clear();
    setState(() {});
  }

  FocusNode myFocusNode = FocusNode();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5) ,
        body: SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h),
             Text(
          'Welcome To',
          style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400),
            ),
             Text('TradeBook',
            style: TextStyle(fontSize: 27.sp, color: appcolor,fontWeight: FontWeight.w600)),
           SizedBox(height: 14.h),
             Text('Sign in Two Continue',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400)),
           SizedBox(height: 28.h),
            TextFormField(
              controller: fieldemail,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: 'Email id',
                labelText: 'Email id',
               enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: Colors.grey,width: 1)
                  ),
                  focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: appcolor,width: 1)
                  ),
                
                
                
                suffixIcon: fieldemail.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: const Icon(
                          Icons.clear,
                          color: appcolor,
                        ),
                        onPressed: clearText,
                      ),
              ),
            ),
             SizedBox(height: 24.h),
            TextFormField(
              controller: fieldpassword,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
               enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: Colors.grey,width: 1)
                  ),
                  focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: appcolor,width: 1)
                  ),
          
                
                suffixIcon: fieldpassword.text.isEmpty
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
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               TextButton(
                 onPressed: (){      Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) =>  const ForgotPassword1()));},
               child:  Text('Forgot Password?',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400, color: appcolor),)
               ),
             ],
           ),
             SizedBox(height: 41.h),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(btncolor),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 12.h)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w400))),
                    child: const Text('Continue')),
              ),
            SizedBox(height: 21.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
          onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()));
          },
          child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'New User?  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                      color: appcolor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ]),
          ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
