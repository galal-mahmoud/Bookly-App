import 'package:bookly_app_v1/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Styles{
  static const titleMeduim30 = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectraFine
  );
  static const titleMeduim20 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
    height: 1.2
  );
  static const titleMeduim18 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,

  );static const titleMeduim16 = TextStyle(
    fontSize: 16.0,
    height: 1,
    fontWeight: FontWeight.w500,

  );static const titleMeduim14 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey
  );
}