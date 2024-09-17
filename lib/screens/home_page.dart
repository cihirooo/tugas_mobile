import 'package:flutter/material.dart';
import '../widgets/player_list.dart';
import '../widgets/coach_list.dart';
import '../widgets/owner_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<String> pemainBola = [
    'Cristiano Ronaldo',
    'Lionel Messi',
    'Neymar Jr',
    'Kylian Mbappe',
    'Robert Lewandowski',
  ];

  static const List<String> staffKepelatihan = [
    'Pep Guardiola',
    'Jurgen Klopp',
    'Zinedine Zidane',
    'Jose Mourinho',
    'Carlo Ancelotti',
  ];

  static const List<Map<String, String>> ownerKlub = [
    {
      'Nama': 'Rasyid Al-Fajri',
      'TTL': 'Samarinda, 06 April 2004',
      'NIM': '2209106097',
      'foto': 'https://i.imgur.com/ugVZjH2.jpg', // Ganti dengan URL gambar yang valid
      'biodata': 'Pemilik klub Rasyid adalah mahasiswa yang lahir di Samarinda dan memiliki ketertarikan dalam dunia sepak bola dan investasi.',
    },
    {
      'Nama': 'Muhammad Yusuf Effendi',
      'TTL': 'Samarinda, 13 Oktober 2004',
      'NIM': '2209106139',
      'foto': 'https://i.imgur.com/jTHjHl7.jpeg', // Ganti dengan URL gambar yang valid
      'biodata': 'Muhammad Yusuf Effendi adalah seorang mahasiswa dengan minat besar di sepak bola dan manajemen tim, serta bercita-cita menjadi pemilik klub.',
    },
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    PlayerList(pemain: pemainBola),
    CoachList(staff: staffKepelatihan),
    OwnerList(owner: ownerKlub),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Klub Bola "Kontrakan FC"'),
        backgroundColor: Colors.blueAccent, // Mengatur warna latar belakang AppBar
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Pemain Bola',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Staff Kepelatihan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Owner Klub',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
