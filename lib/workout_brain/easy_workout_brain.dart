import 'package:flutter/material.dart';
import 'package:workout_junkie/constants.dart';
import 'package:workout_junkie/workout_brain/workout.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const kNextButtonText = 'NEXT';

//TODO: Step 5 - Create a new class called StoryBrain.
class WorkoutBrain {
//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
  List<Workout> _workoutData = [
    Workout(
      workoutTitle:
          '20 Jumping Jacks',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          '20 High Knees on Each Side',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          '20 Butt Kicks on Each Side',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          'TEST1',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          'TEST2',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          'TEST3',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          'TEST4',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          'TEST5',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          'TEST6',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          'TEST7',
      choice1: kNextButtonText,
    ),
        Workout(
      workoutTitle:
          'LAST TESTER',
      choice1: 'REPEAT',
    ),
  ];

  String getWorkout() {
    return _workoutData[_workoutNumber].workoutTitle;
  }

  String getChoice1() {
    return _workoutData[_workoutNumber].choice1;
  }

  int _workoutNumber = 0;

  void nextWorkout(int choiceNumber) {
    if (choiceNumber == 1 && _workoutNumber == 0) {
      _workoutNumber = 2;
    } else if (choiceNumber == 1 && _workoutNumber == 1) {
      _workoutNumber = 2;
    } else if (choiceNumber == 1 && _workoutNumber == 2) {
      _workoutNumber = 3;
    } else if (choiceNumber == 1 && _workoutNumber == 3) {
      _workoutNumber = 4;
    } else if (choiceNumber == 1 && _workoutNumber == 4) {
      _workoutNumber = 5;
    } else if (choiceNumber == 1 && _workoutNumber == 5) {
      _workoutNumber = 6;
    } else if (choiceNumber == 1 && _workoutNumber == 6) {
      _workoutNumber = 7;
    } else if (choiceNumber == 1 && _workoutNumber == 7) {
      _workoutNumber = 8;
    } else if (choiceNumber == 1 && _workoutNumber == 8) {
      _workoutNumber = 9;
    } else if (choiceNumber == 1 && _workoutNumber == 9) {
      _workoutNumber = 10;
    }

    else if (_workoutNumber == 10) {
      restart();
    }
  }

  void restart() {
    _workoutNumber = 0;
  }
}