import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  final String nama;
  final String ttl;
  final String nim;
  final String foto;
  final String biodata;

  const BiodataPage({
    Key? key,
    required this.nama,
    required this.ttl,
    required this.nim,
    required this.foto,
    required this.biodata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(foto),
                radius: 50,
              ),
            ),
            SizedBox(height: 16),
            Text('Nama: $nama', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('TTL: $ttl', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('NIM: $nim', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text('Biodata:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(biodata, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
