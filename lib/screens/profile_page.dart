import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "sudhir_sharma_620",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        splashColor: Colors.white60,
                        child: Image.asset(
                          "assets/images/more.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                          onTap: () {},
                          splashColor: Colors.white60,
                          child: const Icon(Icons.menu)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
