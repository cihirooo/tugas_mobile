import 'package:flutter/material.dart';

class CoachList extends StatelessWidget {
  final List<String> staff;

  const CoachList({Key? key, required this.staff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: staff.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.group),
          title: Text(staff[index]),
        );
      },
    );
  }
}
