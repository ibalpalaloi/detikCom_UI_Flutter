import 'package:detik1/pages/videopage.dart';
import 'package:flutter/material.dart';
import './widgets/cardBerita.dart';
import 'package:flutter_svg/svg.dart';
import './pages/homePage.dart';
import './pages/kategoriPage.dart';
import './pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndexNavigation = 0;

  List pages = [HomePage(), KategoriPage(), VideoPage(), ProfilePage()];

  @override
  void initState() {
    currentIndexNavigation = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[currentIndexNavigation],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          selectedItemColor: Color(0xff21409A),
          showUnselectedLabels: true,
          currentIndex: currentIndexNavigation,
          onTap: (value) {
            setState(() {
              currentIndexNavigation = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: SvgPicture.asset(
                "assets/home.svg",
                width: 25,
                height: 25,
                color: (currentIndexNavigation == 0)
                    ? Color(0xff21409A)
                    : Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Kategori"),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_fill), label: "Video"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
