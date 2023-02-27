import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_tranport_system/screens/prepare_ride.dart';
import 'package:smart_tranport_system/screens/search.dart';
import '../screens/prepare_ride.dart';
import '../screens/home.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background color
      backgroundColor: Color.fromARGB(255, 201, 73, 14),
      //body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //logo
            const Icon(
              CupertinoIcons.car_detailed,
              color: Colors.white,
              size: 120.0,
            ),
            //spacer
            SizedBox(
              height: 20.0,
            ),
            //title
            Text(
              'Smart Transport',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 20.0,
            ),
            //start button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text(
                'Start',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
