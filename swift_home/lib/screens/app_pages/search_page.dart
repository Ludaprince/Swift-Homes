import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 17,
          ),
          child: Column(
            children: [
              TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: const Color.fromRGBO(245, 244, 248, 100),
                  hintText: "Minix",
                  hintStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(161, 165, 193, 1),
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.search,
                    size: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return AppBar();
  }
}
