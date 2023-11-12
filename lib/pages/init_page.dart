import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? Key}) : super(key: Key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currenIndex = 0;

  List<Widget> _pages = [
    Center(child: Text("Principal")),
    Center(child: Text("Shorts")),
    Center(child: Text("Agregar")),
    Center(child: Text("Suscripciones")),
    Center(child: Text("Biblioteca")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: _pages[_currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff212121),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,

        type: BottomNavigationBarType.fixed,
        currentIndex: _currenIndex,
        onTap: (int value){
          _currenIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "Principal",
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            label: "Shorts",
            icon: Icon(
              Icons.play_arrow_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              margin: const EdgeInsets.only(top: 4.0),
              child: const Icon(
                Icons.add_circle_outline,
                size: 32.0,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Suscripciones",
            icon: Icon(
              Icons.subscriptions_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(
              Icons.video_collection_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
