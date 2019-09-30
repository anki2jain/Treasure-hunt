import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Testclass extends StatefulWidget {
  @override
  _TestclassState createState() => _TestclassState();
}

class _TestclassState extends State<Testclass> {
  // Color color1 = Color(0xFFD4AF37);
  Color color1 = Color(0xFFFFDF00);

  Color backcolor = Color(0xFF000020);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      // body: Colu(
      //   child: Text("Treasure Hunt",style: TextStyle(fontFamily:"Theme",color: Color(0xFFD4AF37),fontSize: MediaQuery.of(context).size.width/8),),
      // ),
      body: Center(
        child: Column(
          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width/1.2,
              child: TyperAnimatedTextKit(
                  duration: Duration(seconds: 1),
                  isRepeatingAnimation: false,
                  text: [
                    "Treasure Hunt",
                  ],
                  textStyle: TextStyle(
                      color: color1,
                      fontWeight: FontWeight.w500,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0,
                            color: Colors.white),
                        // Shadow(
                        //   offset: Offset(-5.0, -5.0),
                        //   blurRadius: 8.0,
                        //   color: color1
                        // ),
                      ],
                      fontSize: MediaQuery.of(context).size.width / 9,
                      fontFamily: "Theme"),
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.center // or Alignment.topLeft
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Image.asset(
                    "assets/images/treasure.gif",
                    height: MediaQuery.of(context).size.height / 4,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
