import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swift_home/screens/app_pages/home_page.dart';
import 'package:swift_home/screens/pages/favorite.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => MainHomeScreenState();
}

class MainHomeScreenState extends State<MainHomeScreen> {

  int index = 0;
  late Color selectedItem = Colors.blue;
  Color unselectedItem = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(0),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          // backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // elevation: 3,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: index == 0 ? selectedItem : unselectedItem,
              ),
              label: "Home",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
                color: index == 1 ? selectedItem : unselectedItem,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                color: index == 2 ? selectedItem : unselectedItem,
              ),
              label: "favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                color: index == 3 ? selectedItem : unselectedItem,
              ),
              label: "profile",
            ),
          ],
        ),
      ),
      body: index == 0 ? const HomePage() : 
      index == 2 ? const FavoriteScreen() : const HomePage(),
    );
  }
}