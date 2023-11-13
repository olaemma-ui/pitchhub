import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  final List<Map<String, String>> _routes = [
    {'text': ''}
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) => ListTile(
              onTap: () {
                Get.back();
              },
              title: Text('$index Drawer $index'),
            )),
      ),
    );
  }
}
