import 'package:flutter/material.dart';
import 'card1.dart';

// 1
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 7
  int _selectedIndex = 0;

  // 8
  static List<Widget> pages = <Widget>[
    const Card1(),
    // TODO:Replace with CARD2
    Container(
      color: Colors.green,
    ),
    // TODO:Replace with CARD3
    Container(
      color: Colors.blue,
    ),
  ];

  // 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Fooderlich',
            // 2
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
      body: pages[_selectedIndex],
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // 10
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,
        // 6
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: 'Card1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: 'CARD3',
          ),
        ],
      ),
    );
  }
}
