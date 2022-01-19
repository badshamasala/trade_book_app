import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/signup_page.dart';


class AboutScreen3 extends StatefulWidget {
  const AboutScreen3({Key? key}) : super(key: key);

  @override
  _AboutScreen3State createState() => _AboutScreen3State();
}

class _AboutScreen3State extends State<AboutScreen3> {

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
      ), */
      body: Column(
        children: [
          Container(
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(28)),
                        child: Container(
                          width: 80,
                          height: 120,
                          color: Colors.indigoAccent.shade700,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(28)),
                        child: Container(
                          width: 50,
                          height: 90,
                          color: Colors.blueAccent.shade100,
                        ),
                      ),
                    ],
                  ),
                ],
              )
              ),
              const SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text('Zero Comissions,No minimums',
                    style: TextStyle(fontSize: 50,
                    fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            const SizedBox(height: 100),  
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigoAccent.shade700,
                  onPrimary: Colors.white
                  
                ),
                
                onPressed:(){  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             const SignUpPage()));}, 
                child: const Text('Sign Up')),
            )
        /*     buildIndicator() */
        ],
        
      ),
      

    );
  }
 /*      Widget buildIndicator()=> AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: ,
        effect: const SlideEffect(
          dotWidth: 5,
          dotHeight: 5,
          activeDotColor: Colors.red,
          dotColor: Colors.black

          ),
      ); */
}