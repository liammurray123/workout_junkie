import 'package:flutter/material.dart';
import 'package:workout_junkie/constants.dart';
import 'package:workout_junkie/components/nextPageButton.dart';
import 'package:workout_junkie/workout_brain/easy_workout_brain.dart';

WorkoutBrain workoutBrain = WorkoutBrain();

class EasyWorkoutPage extends StatefulWidget {
  _EasyWorkoutPageState createState() => _EasyWorkoutPageState();
}

class _EasyWorkoutPageState extends State<EasyWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: kHeaderImageFlex,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset('assets/images/hiking.png'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    workoutBrain.getWorkout(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NextPageButton(
                    width: 180,
                    buttonText: 'EXIT',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  NextPageButton(
                    width: 180,
                    buttonText: workoutBrain.getChoice1(),
                    onTap: () {
                      setState(() {
                        workoutBrain.nextWorkout(1);
                      });
                    },
                    
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
