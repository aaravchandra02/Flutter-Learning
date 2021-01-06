import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SafeArea(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/diamond.png'),
                ),
                Text(
                  'Aarav Chandra',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sacramento',
                  ),
                ),
                Text(
                  'AWESOME DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Now we have to make the two childs that have phone
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 55.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        size: 40.0,
                        semanticLabel: 'It is the Phone Icon',
                        textDirection: TextDirection.ltr,
                        color: Colors.teal,
                      ),
                      // To separate the number from icon, we add a SizedBox:
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+44 (123) 456 789',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 55.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        size: 40.0,
                        semanticLabel: 'It is the Email Icon',
                        textDirection: TextDirection.ltr,
                        color: Colors.teal,
                      ),
                      // To separate the number from icon, we add a SizedBox:
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'flutter@dev.com',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
