import 'package:flutter/material.dart';

import '../utils/strings.dart';

class StoryView extends StatelessWidget {
  const StoryView(
      {super.key,
      required this.image1,
      required this.image2,
      required this.index});

  final String image1;
  final String image2;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                image1,
                width: 45,
                height: 45,
                fit: BoxFit.fill,
              ),
            ),
            title: const Text(
              user_name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            subtitle: const Text(
              sub_title,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38),
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Image.network(
            index % 2 == 0 ? image1 : image2,
            fit: BoxFit.contain,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite_border, size: 30),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.chat_bubble_outline, size: 30),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/images/share_icon.png",
                      width: 40,
                      height: 25,
                    ),
                    Expanded(child: Container()),
                    const Icon(Icons.save_alt_outlined, size: 30),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("369,407 $likes",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("$view_all 2,859 $comments",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.5))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        image2,
                        fit: BoxFit.fill,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(add_a_comment,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.5)))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("February 2024",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.5))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
