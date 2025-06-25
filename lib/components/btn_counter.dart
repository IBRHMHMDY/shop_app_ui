import 'package:flutter/material.dart';

  SizedBox btnCounter(IconData icon, VoidCallback? press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }

