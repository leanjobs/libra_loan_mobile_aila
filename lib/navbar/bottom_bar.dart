import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraloan_mobile_aila/activity_request.dart';
import 'package:libraloan_mobile_aila/categories.dart';
import 'package:libraloan_mobile_aila/history_request_books.dart';
import 'package:libraloan_mobile_aila/homepage.dart';
import 'package:libraloan_mobile_aila/popular.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        HomePage(),
        MyActivityRequest(),
        Categories(),
        Popular(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.home,
            size: 30,
          ),
          activeColorPrimary: Color(0xFF222222),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.bookmark,
            size: 30,
          ),
          activeColorPrimary: Color(0xFF222222),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.category_outlined,
            size: 30,
          ),
          activeColorPrimary: Color(0xFF222222),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.favorite_border_outlined,
            size: 30,
          ),
          activeColorPrimary: Color(0xFF222222),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    PersistentTabController _controller =
        PersistentTabController(initialIndex: 0);

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F8FE),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 50,
              blurRadius: 7,
              offset: Offset(0, -10))
        ],
      ),
      child: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 4,
                offset: Offset(0, 3))
          ],
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6,
        navBarHeight: 80,
      ),
    );
  }
}
