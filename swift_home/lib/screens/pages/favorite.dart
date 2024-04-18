import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 230,
              width: double.infinity,
              child: Container(
                // height: 150,
                // width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/add_favorite.png",
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              "Your Favourite Page is",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(31, 76, 107, 1),
              ),
            ),
            // const SizedBox(height: 5),
            const Text(
              "empty",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(31, 76, 107, 1),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Click add button above to start exploring and choose your favourite estate",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
