import 'package:flutter/material.dart';
import 'package:flutter_task_6/Cart/cart_page.dart';
import 'package:flutter_task_6/Chat/chat_page.dart';
import 'package:flutter_task_6/Home/home_page.dart';
import 'package:flutter_task_6/Profile/profile_page.dart';
import 'package:flutter_task_6/Wishlist/wishlist_page.dart';

class MenuTabBar extends StatefulWidget {
  const MenuTabBar({Key? key}) : super(key: key);

  @override
  State<MenuTabBar> createState() => _MenuTabBarState();
}

class _MenuTabBarState extends State<MenuTabBar>
    with SingleTickerProviderStateMixin {
   late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const [
          HomePage(),
          CartPage(),
          WishlistPage(),
          ChatPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(248, 248, 248, 1),
        child: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          controller: tabController,
          tabs: const [
            Tab(
              text: "Home",
              icon: Icon(Icons.home_filled),
            ),
            Tab(
              text: "Cart",
              icon: Icon(Icons.shopping_bag),
            ),
            Tab(
              text: "Wishlist",
              icon: Icon(Icons.favorite),
            ),
            Tab(
              text: "Chat",
              icon: Icon(Icons.chat_rounded),
            ),
            Tab(
              text: "Profile",
              icon: Icon(Icons.account_box_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
