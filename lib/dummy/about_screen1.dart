import 'package:flutter/material.dart';

class AboutScreen1 extends StatefulWidget {
  const AboutScreen1({Key? key}) : super(key: key);

  @override
  _AboutScreen1State createState() => _AboutScreen1State();
}

class _AboutScreen1State extends State<AboutScreen1> {

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
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text('Higher Returns through Investment',
                    style: TextStyle(fontSize: 60,
                    fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            const SizedBox(height: 100),  
          /*   Container(
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
                                            const AboutScreen2()));}, 
                child: const Text('Next')),
            ) */
           /*  buildIndicator() */
        ],
        
      ),
      

    );
  }
   /*    Widget buildIndicator()=> AnimatedSmoothIndicator(
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
