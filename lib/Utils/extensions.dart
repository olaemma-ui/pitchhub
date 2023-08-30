
import 'package:flutter/material.dart';

extension ColorFormatter on String{
  hex ()=> Color(int.parse(replaceAll('#', '0X')));
}