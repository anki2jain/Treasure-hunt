import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
  Color color1 = Color(0xFFFFDF00);
  Color backcolor = Color(0xFF000020);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              "Rules And Regulations",
              style: TextStyle(
                color: color1,
                fontFamily: "Theme",
                fontSize: 30,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 1.0,
                      color: Colors.white),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Text(
                      "All the teams must have 3 members.\n\nOnce registration is done no further changes will be entertained.\n\nEach team must required a smart phone with internet connection\n\nOnly those who qualified prelims will paarticipate in final round\n\nAll the team members will have to adhere to rules & regulations\n\nTeam not adhering to any guidelines will be disqualified\n\nDecision taken by the heads will be final",
                      style: TextStyle(
                        color: color1,
                        fontFamily: "Theme",
                        fontSize: 15,
                        shadows: <Shadow>[
                          Shadow(
                              offset: Offset(0.2, 0.2),
                              blurRadius: 1.0,
                              color: Colors.white),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
