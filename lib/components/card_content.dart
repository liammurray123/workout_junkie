import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContent extends StatelessWidget {
  CardContent({
    @required this.icon,
    this.label,
  });
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: FaIcon(
          icon,
          size: 80.0,
        ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
            fontSize: 20.0,
            color: Color(0xFFFEFEFE),
          ),
        ),
        ),
      ],
    );
  }
}
