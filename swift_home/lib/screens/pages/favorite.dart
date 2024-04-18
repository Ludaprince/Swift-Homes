import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "0 estates",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(31, 76, 107, 1),
                  ),
                ),
                SizedBox(
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(245, 244, 248, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                      padding: const EdgeInsets.all(5).copyWith(right: 20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 70,
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          child: const CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.favorite,
                              size: 10,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Flexible(
                          child: Text(
                            "Places",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(37, 43, 92, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
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
        ],
      ),
    );
  }
}
