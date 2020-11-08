import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/oob.png',
              height: 180,
              width: 180,
            ),
            Center(
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            FlatButton(
                onPressed: (){
                  Navigator.popAndPushNamed(context, 'inputs');
                },
              height: 70,
              minWidth: 200,

              color: Colors.red,
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
