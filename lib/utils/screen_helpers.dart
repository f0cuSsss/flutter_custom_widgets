import 'package:flutter/widgets.dart';

/* 
===================================================
================= Screen helpers ==================
=================================================== 
*/
/// Returns width of device screen
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

/// Returns height of device screen
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

/// Returns width that calculated as percentage of the device screen width
double percentWidth(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;

/// Returns height that calculated as percentage of the device screen height
double percentHeight(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;
