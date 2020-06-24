import 'package:flutter/material.dart';
import 'package:workout_junkie/components/nextPageButton.dart';
import 'package:workout_junkie/constants.dart';
import 'package:workout_junkie/components/welcomeScreenText.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: kHeaderImageFlex,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset('assets/images/hiking.png'),
              ),
            ),
            Expanded(
              flex: kWelcomePageTextFlex,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text(kWelcomeScreenBodyText,
                    style: kWelcomeScreenBodyTextStyle,
                    textAlign: TextAlign.center),
              ),
            ),
            Container(
              child: NextPageButton(
                width: 200,
                buttonText: 'Next Page',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WelcomeScreen1()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: kHeaderImageFlex,
              child: Image.asset('assets/images/workingout.png'),
            ),
            Expanded(
              flex: kWelcomePageTextFlex,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text(kWelcomeScreenBodyText2,
                    style: kWelcomeScreenBodyTextStyle,
                    textAlign: TextAlign.center),
              ),
            ),
            Container(
              child: NextPageButton(
                width: 200,
                buttonText: 'Next Page',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WelcomeScreen2()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: kHeaderImageFlex,
              child: Image.asset(
                'assets/images/welcomeimage.png',
              ),
            ),
            Expanded(
              flex: kWelcomePageTextFlex,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text(kWelcomeScreenBodyText3,
                    style: kWelcomeScreenBodyTextStyle,
                    textAlign: TextAlign.center),
              ),
            ),
            Container(
              child: NextPageButton(
                width: 200,
                buttonText: 'Next Page',
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
