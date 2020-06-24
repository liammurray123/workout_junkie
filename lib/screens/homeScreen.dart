import 'package:flutter/material.dart';
import 'package:workout_junkie/constants.dart';
import 'package:workout_junkie/components/reusable_card.dart';
import 'package:workout_junkie/components/card_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: kHeaderImageFlex,
                child: Image.asset('assets/images/workingout.png'),
              ),
              Container(margin: EdgeInsets.all(30), child: Text('Select Difficulty', style: kPageHeaderTextStyle),),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: ReusableCard(
                      onPress: () {
                        Navigator.pushNamed(context, '/easyworkout');
                      },
                      color: kBlueAccentColor,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.batteryQuarter,
                        label: 'EASY',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ReusableCard(
                      onPress: () {},
                      color: kBlueAccentColor,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.batteryHalf,
                        label: 'MEDIUM',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: ReusableCard(
                      onPress: () {},
                      color: kBlueAccentColor,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.batteryThreeQuarters,
                        label: 'HARD',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ReusableCard(
                      onPress: () {},
                      color: kBlueAccentColor,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.batteryFull,
                        label: 'EXTREME',
                      ),
                    ),
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
