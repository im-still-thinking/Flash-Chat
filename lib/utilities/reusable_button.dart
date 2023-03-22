import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({this.buttonText, this.buttonColor, this.pressEvent});

  final String buttonText;
  final Function pressEvent;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: pressEvent,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            '$buttonText',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
