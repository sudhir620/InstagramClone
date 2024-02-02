import 'package:flutter/material.dart';

import '../Widgets/home_header.dart';
import '../Widgets/status_view.dart';
import '../Widgets/story_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String image1 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF5Gpf9KOjlyyPzVvG5VhMxNIt6rdav-YFuw&usqp=CAU";
  String image2 =
      "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/09/instagram-image-size.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeHeader(),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(
              height: 85,
              child: ListView.builder(
                  itemCount: 50,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return StatusView(
                        imageUrl: index % 2 == 0 ? image1 : image2);
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 50,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return StoryView(
                        image1: image1, image2: image2, index: index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
