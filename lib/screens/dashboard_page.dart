import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/bottom_navigation.dart';
import 'package:instagram_clone/screens/add_post.dart';
import 'package:instagram_clone/screens/home_page.dart';
import 'package:instagram_clone/screens/profile_page.dart';
import 'package:instagram_clone/screens/reals_page.dart';
import 'package:instagram_clone/screens/search_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentSelectedIndex = 0;

  final _pages = const <Widget>[
    HomePage(),
    SearchPage(),
    AddPost(),
    RealsPage(),
    ProfilePage()
  ];

  updatePage(int selectedPageIndex) {
    setState(() {
      currentSelectedIndex = selectedPageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: _pages[currentSelectedIndex]),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            CustomBottomNav(
              selectedIndex: currentSelectedIndex,
              currentIndex: updatePage,
            )
          ],
        ),
      ),
    );
  }
}
