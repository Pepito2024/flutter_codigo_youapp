import 'package:flutter/material.dart';
import 'package:flutter_codigo_youapp/ui/general/colors.dart';

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
      backgroundColor: kBrandPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBrandPrimaryColor,
        title: Image.asset(
          'assets/images/logo.png',
          height: 26.0,
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.cast, color: Colors.white,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none, color: Colors.white,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,),),
          const SizedBox(
            width: 6.0,
          ),
          const CircleAvatar(
            backgroundColor: Colors.white12,
            radius: 14.0,
            backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1600",),
          ),
          const SizedBox(
            width: 6.0,
          ),
        ],
      ),
      body: _pages[_currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBrandPrimaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currenIndex,
        onTap: (int value) {
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
