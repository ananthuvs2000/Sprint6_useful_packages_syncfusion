import 'package:flutter/material.dart';

class DemoItems extends StatelessWidget {
  DemoItems({Key? key, required this.listTitle, required this.demoRoute})
      : super(key: key);
  String listTitle;
  Widget demoRoute;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(listTitle),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => demoRoute),
          );
        });
  }
}