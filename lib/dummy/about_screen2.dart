import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/about_screen3.dart';


class AboutScreen2 extends StatefulWidget {
  const AboutScreen2({Key? key}) : super(key: key);

  @override
  _AboutScreen2State createState() => _AboutScreen2State();
}

class _AboutScreen2State extends State<AboutScreen2> {

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
                    child: const Text('Secure and Safe investing',
                    style: TextStyle(fontSize: 65,
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
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  side: const BorderSide(color: Colors.blueAccent)
                ),
                
                onPressed:(){  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AboutScreen3()));}, 
                child: const Text('Next')),
            )
            /* buildIndicator() */
        ],
        
      ),
      

    );
  }
    /*   Widget buildIndicator()=> AnimatedSmoothIndicator(
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