import 'package:flutter/material.dart';
import 'input_page.dart';




class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI RESULT',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color(0xFF111328),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text(
                    weightsform,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 50
                    ),
                  ),



                  Text(
                    BMI.toStringAsFixed(1),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 80
                    ),
                  ),



                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,

                    ),
                  ),

                ],
              )
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.popAndPushNamed(context, 'inputs');
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Re-Calculate',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.red,
              margin: EdgeInsets.only(top:10),
              width: double.infinity,
              height: 80,
            ),
          ),
        ],
      ),

    );
  }
}
