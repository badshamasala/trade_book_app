import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/otpfornumber.dart';
import 'package:flutter_application_1/screens/sign_in.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  List<dynamic> cities = [];

  String? city;
  @override
  void initState() {
    super.initState();
    cities.add({"id": 1, "label": "Mumbai"});
    cities.add({"id": 2, "label": "Pune"});
    cities.add({"id": 3, "label": "Surat"});
    cities.add({"id": 4, "label": "Ahmedabad"});
    cities.add({"id": 5, "label": "Kota"});
    cities.add({"id": 6, "label": "Jaipur"});
    cities.add({"id": 7, "label": "Rajasthan"});
    cities.add({"id": 8, "label": "Jodhpur"});
    cities.add({"id": 9, "label": "Surat"});
    cities.add({"id": 10, "label": "Indore"});
    cities.add({"id": 11, "label": "Lucknow"});
    cities.add({"id": 12, "label": "Ajmer"});
    cities.add({"id": 13, "label": "Sirohi"});
    cities.add({"id": 14, "label": "Punjab"});
    cities.add({"id": 15, "label": "Ladakh"});
  }

  final fieldText = TextEditingController();
  final fieldnametext = TextEditingController();
  final fieldnumbertext = TextEditingController();
  void clearText() {
    fieldText.clear();
    setState(() {});
  }

  void clearText1() {
    fieldnumbertext.clear();
    setState(() {});
  }

  void cleartext() {
    fieldnametext.clear();
    setState(() {});
  }

  FocusNode nameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode numFocusNode = FocusNode();
  FocusNode cityFocusNode = FocusNode();

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 72.h),
              Text(
                'Welcome To',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text('TradeBook',
                  style: TextStyle(
                      fontSize: 27.sp,
                      fontWeight: FontWeight.w600,
                      color: appcolor)),
              SizedBox(height: 12.h),
              Text('Sign Up in Just Two Steps',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 28.h),
              TextField(
                focusNode: nameFocusNode,
                cursorColor: appcolor,
                controller: fieldnametext,
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 19.h),
                      labelText: 'Full Name',
                    enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: Colors.grey,width: 1)
                  ),
                  focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: appcolor,width: 1)
                  ),
                  
                  /*    prefixIcon: const Icon(
                Icons.phone_android,
                color: appcolor,
              ), */
                  /* filled: true,
                  fillColor: Colors.white, */
                 
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
              SizedBox(height: 24.h),
              TextFormField(
                focusNode: emailFocusNode,
                controller: fieldText,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 19.h),
                  enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: Colors.grey,width: 1)
                  ),
                  focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: appcolor,width: 1)
                  ),
                 
                  /*    prefixIcon: const Icon(
                Icons.phone_android,
                color: appcolor,
              ), */
                  /* filled: true,
                  fillColor: Colors.white, */
                 
                  suffixIcon: fieldText.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          icon:  Icon(
                            Icons.clear,
                            color: appcolor,
                          ),
                          onPressed: clearText,
                        ),
                ),
              ),
              SizedBox(height: 24.h),
              TextFormField(
                controller: fieldnumbertext,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
             
                  labelText: 'Phone Number',
                  enabledBorder: OutlineInputBorder(
                    
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: Colors.grey,width: 1)
                  ),
                  focusedBorder: OutlineInputBorder(
                    
                   borderRadius: BorderRadius.circular(8),
                   borderSide: BorderSide(color: appcolor,width: 1)
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 19.h),
                  suffixIcon: fieldnumbertext.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          icon:  Icon(
                            Icons.clear,
                            color: appcolor,
                          ),
                          onPressed: clearText1,
                        ),
                ),
              ),
              SizedBox(height: 24.h),
              SizedBox(
                height: 54,
                child: FormHelper.dropDownWidget(
                  context,
                  "Select City",
                  city,
                  cities,
                  (onChangedVal) {
                    city = onChangedVal;
                    print('Selected :$onChangedVal');
                  },
                  (onValidateVal) {
                    if (onValidateVal == null) {
                      return 'Please Select Product Type';
                    }

                    return null;
                  },
                  borderFocusColor: appcolor,
                  borderColor: Colors.grey,
                  borderRadius: 10,
                  optionLabel: "label",
                  optionValue: "id",
                  paddingLeft: 0,
                  paddingRight: 0,
                  paddingBottom: 0,
                  paddingTop: 0,
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      activeColor: Colors.black,
                      /*  checkColor: Colors.green,
              hoverColor: Colors.blue, */
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      }),
                  TextButton(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Agree our terms and conditions?  ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Read More',
                          style: TextStyle(
                            color: appcolor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OtpforNum()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(btncolor),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 12.h)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w400))),
                    child: const Text('Send OTP')),
              ),
              /* Container(

                height: 1.1 * (MediaQuery.of(context).size.height / 20),
                width: 5 * (MediaQuery.of(context).size.width / 10),
                margin: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 15, primary: appcolor),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpforNum()));
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
              ), */
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()));
                    },
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Already have an account?  ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign In',
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
        )));
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
        title: Text("Terms & Conditions",
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.black,
                  letterSpacing: .5,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            )),
        content: SingleChildScrollView(
          child: Text(
              "TradeBook Financial Services LLP has become an approved partner of the Government of India for using its \"consent-based requester model\" services of DigiLocker. We use these services to obtain your proof of address (your account name would be taken as per the name registered on the Income Tax database / as per your PAN) if you are not already KRA verified, and digitally signing your application form with Aadhaar eSign using NSDL (licensed ASP). We do not collect or store your Aadhaar number and neither of these services reveal your Aadhaar number to us. If you do not wish to grant us access to retrieve your documents stored in DigiLocker, please use our offline forms by visiting any of our branches or Authorized Persons.",
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  color: Colors.black,
                  letterSpacing: .5,
                  fontSize: 14.sp,
                ),
              )),
        ),
        actions: [
          okButton,
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))));

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
