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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/diamond.png'),
                ),
                Text(
                  'Aarav Chandra',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 65.0,
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
                SizedBox(
                  width: 200.0,
                  height: 10.0,
                  // Divider - adds the horizontal bar below the 'AWESOME...' text.
                  child: Divider(
                    height: 20.0,
                    thickness: 1.2,
                    color: Colors.teal.shade100,
                  ),
                ),
                // Now we have to make the two childs that have phone using a card class.
                // Card widget doesn't have padding hence we have to use padding widget enclosing it.
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 55.0,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Row(
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
                ),
                // Cards by default comes with white color.
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 55.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          size: 40.0,
                          semanticLabel: 'It is the Email Icon',
                          textDirection: TextDirection.ltr,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'flutter@dev.com',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
