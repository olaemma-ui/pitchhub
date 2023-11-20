import 'package:flutter/material.dart';

class AccountListItemModel {
  final String title;
  final String route;
  final IconData icon;

  final Function()? onTap;

  AccountListItemModel({
    required this.title,
    required this.route,
    required this.icon,
    this.onTap,
  });
}
