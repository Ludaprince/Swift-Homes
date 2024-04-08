import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:swift_home/screens/list_logs/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hey, ",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(35, 79, 104, 1),
                              ),
                            ),
                            Text(
                              "Jonathan!",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(35, 79, 104, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      "Lets start exploring",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(35, 79, 104, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onTap: () {},
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromRGBO(245, 244, 248, 100),
                        hintText: "Search house, Apartment, etc",
                        hintStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(161, 165, 193, 1),
                        ),
                        prefixIcon: const Icon(
                          CupertinoIcons.search,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: template_2.length,
                        itemBuilder: (context, int i) {
                          return Container(
                            margin: const EdgeInsets.all(5),
                            height: 40,
                            child: FilledButton(
                              style: FilledButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(35, 79, 104, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                template_2[i]["Button"],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 200,
                          enableInfiniteScroll: true,
                          //  aspectRatio: 16/9,
                          //  autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          scrollDirection: Axis.horizontal,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, index, realIndex) => Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/home_horizontal.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Featured Estate",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(37, 43, 92, 1)),
                            ),
                            Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(35, 79, 104, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 100,
                          enableInfiniteScroll: true,
                          //  autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          scrollDirection: Axis.horizontal,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, index, realIndex) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                               height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/vertical.png"),
                                  ),
                                ),
                              ),
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Featured Estate",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(37, 43, 92, 1)),
                                ),
                                Text(
                                  "View all",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(35, 79, 104, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 200,
                          enableInfiniteScroll: true,
                          //  autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          scrollDirection: Axis.horizontal,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, index, realIndex) => Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/home_horizontal.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
