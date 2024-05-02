import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.amber,
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
                  hintText: "Search",
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
              const SizedBox(height: 20),
              SizedBox(
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
              )
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppbar(
      leadingWidth: 74,
      leading: Container(
        margin: const EdgeInsets.only(left: 24, top: 3, bottom: 3),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(245, 244, 248, 1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: const Text(
        "Search result",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Color.fromRGBO(37, 43, 92, 1),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 3),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(245, 244, 248, 1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(Icons.filter),
        ),
      ],
    );
  }
}

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;

  const CustomAppbar(
      {super.key,
      this.height,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
