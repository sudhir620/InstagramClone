import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/instagram_txt_logo.png",
            height: 40,
            width: 150,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  splashColor: Colors.white60,
                  child: const Icon(Icons.favorite_border_outlined),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                    onTap: () {},
                    splashColor: Colors.white60,
                    child: Image.asset(
                      "assets/images/messenger.png",
                      width: 35,
                      height: 20,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
