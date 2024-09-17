import 'package:flutter/material.dart';
import '../screens/biodata_page.dart';

class OwnerList extends StatelessWidget {
  final List<Map<String, String>> owner;

  const OwnerList({Key? key, required this.owner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: owner.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.account_balance),
          title: Text(owner[index]['Nama']!),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BiodataPage(
                  nama: owner[index]['Nama']!,
                  ttl: owner[index]['TTL']!,
                  nim: owner[index]['NIM']!,
                  foto: owner[index]['foto']!,
                  biodata: owner[index]['biodata']!,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
