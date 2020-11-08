
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_creator.dart';
import 'containers_content.dart';

Color malecolour = Color(0xFF111328);
Color femalecolour = Color(0xFF111328);
Color active = Color(0xFF1D1E33);
Color inactive = Color(0xFF111328);
int height =180;
int Weight =70;
int age = 20;

String weightsform = '';
double conv;
double BMI;
String message;

enum Gender {
  Male,
Female
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  void calc(){
  if(BMI >=25){
      weightsform = 'OVERWEIGHT';
      message = 'You have a higher than normal body weight. Try to exercise more';
    }
    else if(BMI >=18.5 && BMI <25){
      weightsform = 'NORMAL';
      message = 'You have a normal body weight. Good Job!';
    }
    else{
      weightsform = 'UNDERWEIGHT';
      message = 'You have a lower than normal body weight. Try to eat more!';
    }

  }
  void choice(Gender gender){

    gender == Gender.Male?malecolour = active :malecolour = inactive ;
    gender == Gender.Male? femalecolour = inactive:femalecolour= active;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(
            child: Row( 
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        choice(Gender.Male);
                      });

                      },
                    child: con(colo: malecolour,
                      cardbody: iconcon(ic: FontAwesomeIcons.mars,name: 'MALE'),
                    ),
                  ),

                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        choice(Gender.Female);
                      });
                    },
                    child: con(colo: femalecolour,
                      cardbody: iconcon(ic: FontAwesomeIcons.venus,name: 'FEMALE'),
                    ),
                  ),

                )
              ],
            ),
          ),
          Expanded(

            child: con(colo: Color(0xFF1D1E33),

            cardbody: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                'Height',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
                Text(
                  height.toString()+' CM',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Slider(
                  min: 100.0,
                  max: 220.0,
                  value: height.toDouble(),
                  activeColor: Colors.red,
                  inactiveColor: Colors.grey,
                  onChanged: (double value){
                    setState(() {
                      height = value.round();
                    });
                  },

                ),

              ]
            ),
            ),

          ),
          Expanded(
            child: Row( 

              children: [

                Expanded(
                  child: con(colo: Color(0xFF1D1E33),
                    cardbody: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          Weight.toString(),
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.white10,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                                onPressed: (){
                                  setState(() {
                                    Weight--;
                                  });
                                }
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.white10,
                                child: Icon(
                                    Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: (){
                                  setState(() {
                                    Weight++;
                                  });
                                }
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: con(colo: Color(0xFF1D1E33),
                    cardbody: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                                backgroundColor: Colors.white10,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                }
                            ),
                            FloatingActionButton(
                                backgroundColor: Colors.white10,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                }
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          GestureDetector(
            onTap: (){
              setState(() {

                 conv = height/100;
                 BMI = Weight/(conv * conv);

                 calc();
              });
              Navigator.popAndPushNamed(context, 'result');
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Calculate',
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

      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      // ),
    );
  }
}

