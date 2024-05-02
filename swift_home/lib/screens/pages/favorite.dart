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
            padding: const EdgeInsets.only(left: 21, right: 21, top: 15),
            child: SizedBox(
              child: Row(
                children: [
                  const Text(
                    "Found ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(37, 43, 92, 1),
                    ),
                  ),
                  const Text(
                    "0 ",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(37, 43, 92, 1),
                    ),
                  ),
                  const Text(
                    "estates",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(37, 43, 92, 1),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 80,
                    // padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 244, 248, 100),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(
                          height: 35,
                          width: 40,
                          image: AssetImage("assets/show.png"),
                        ),
                        Image(
                          height: 45,
                          width: 20,
                          image: AssetImage("assets/show2.png"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
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
                  "Click add button above to start exploring and choose your favourite estates",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(83, 88, 122, 1),
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
