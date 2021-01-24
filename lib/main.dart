import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/roberto.jpeg'),
              ),
              Text(
                'Roberto Ribeiro',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              this._getCard(
                iconData: Icons.phone,
                title: '+55 99 9 9999-9999',
              ),
              this._getCard(
                iconData: Icons.email,
                title: 'robertoribeiro.code@gmail.com',
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getCard({IconData iconData, String title = ''}) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 25.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            iconData,
            color: Colors.teal,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.teal.shade900,
              fontFamily: 'Source Sans Pro',
              fontSize: 17.5,
            ),
          ),
        ),
      ),
    );
  }
}
