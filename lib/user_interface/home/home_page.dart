import "package:convex_bottom_bar/convex_bottom_bar.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  late final List<Widget> pages;

  void _tabClicked(int tabNumber) {
    setState(() {
      currentIndex = tabNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        disableDefaultTabController: true,
        initialActiveIndex: 2,
        height: 58,
        items: [
          const TabItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
            ),
          ),
          const TabItem(
            icon: Icon(FontAwesomeIcons.users),
          ),
          TabItem(
            icon: IconButton(
              icon: const Icon(
                Icons.add,
                // color: ColorConstant.veryWhiteBackgroundColor,
                // size: SpacingConstant.extraLargePadding,
              ),
              onPressed: () {
                _tabClicked(2);
              },
            ),
          ),
          const TabItem(
            icon: Icon(FontAwesomeIcons.bell),
          ),
          const TabItem(
            icon: Icon(
              FontAwesomeIcons.user,
            ),
          ),
        ],
        onTabNotify: (i) {
          _tabClicked(i);

          return false;
        },
      ),
    );
  }
}
