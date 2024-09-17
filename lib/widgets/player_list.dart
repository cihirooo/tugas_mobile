import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  final List<String> pemain;

  const PlayerList({Key? key, required this.pemain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pemain.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text(pemain[index]),
        );
      },
    );
  }
}
