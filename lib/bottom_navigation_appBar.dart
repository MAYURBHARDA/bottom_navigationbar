import 'package:bottom_navigationbar/test.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class BottomAppBars extends StatefulWidget {
  const BottomAppBars({Key? key}) : super(key: key);

  @override
  State<BottomAppBars> createState() => _BottomAppBarsState();
}

class _BottomAppBarsState extends State<BottomAppBars> {
  var _pagesData = [Home(), Login(), Test()];
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pagesData[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "LogIn"),
          BottomNavigationBarItem(icon: Icon(Icons.notes), label: "Test"),
        ],
        currentIndex: _selectedItem,
        onTap: (setValue) {
          setState(() {
            _selectedItem = setValue;
          });
        },
      ),
    );
  }
}
