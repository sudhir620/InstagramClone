import 'package:flutter/material.dart';
import 'package:instagram_clone/models/BottomNavModel.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav(
      {super.key, required this.selectedIndex, required this.currentIndex});

  final Function(int) currentIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              currentIndex(0);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                  getNavIcon(selectedIndex, 0),
              width: 24,
              height: 24,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              currentIndex(1);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                getNavIcon(selectedIndex, 1),
              width: 24,
              height: 24,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              currentIndex(2);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                getNavIcon(selectedIndex, 2),
              width: 24,
              height: 24,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              currentIndex(3);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                getNavIcon(selectedIndex, 3),
              width: 24,
              height: 24,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              currentIndex(4);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                getNavIcon(selectedIndex, 4),
              width: 24,
              height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String getNavIcon(int selectedIndex, int currentIndex) {
  BottomNavModel model = bottomNavList()[currentIndex];
  return selectedIndex == currentIndex ? model.unselectedIcon : model
      .selectedIcon;
}

List<BottomNavModel> bottomNavList() {
  return <BottomNavModel>[
    BottomNavModel(selectedIcon: "assets/images/home.png",
        unselectedIcon: "assets/images/selected_home.png"),
    BottomNavModel(selectedIcon: "assets/images/search.png",
        unselectedIcon: "assets/images/selected_search.png"),
    BottomNavModel(selectedIcon: "assets/images/more.png",
        unselectedIcon: "assets/images/more.png"),
    BottomNavModel(selectedIcon: "assets/images/video.png",
        unselectedIcon: "assets/images/selected_video.png"),
    BottomNavModel(selectedIcon: "assets/images/user.png",
        unselectedIcon: "assets/images/selected_profile.png"),
  ];
}
