import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  final String imageUrl;
  const StatusView({
    super.key,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: [Colors.amber, Colors.red], begin: Alignment.centerLeft),
      ),
      child: Container(
        margin: const EdgeInsets.all(2.0),
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              imageUrl,
              width: 40,
              height: 40,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
