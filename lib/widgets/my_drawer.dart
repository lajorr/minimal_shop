import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal_shop/screens/about_screen.dart';
import 'package:minimal_shop/screens/cart_screen.dart';
import 'package:minimal_shop/screens/settings_screen.dart';
import 'package:minimal_shop/widgets/drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(
        0xffE0E1E1,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Center(
              child: Lottie.network(
                'https://lottie.host/74689002-7398-4872-97ba-f3f1b2468ad3/ZkErl6njoi.json',
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  DrawerTile(
                    icon: Icons.home,
                    title: 'SHOP',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  DrawerTile(
                    icon: Icons.shopping_cart_outlined,
                    title: 'CART',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CartScreen(),
                        ),
                      );
                    },
                  ),
                  DrawerTile(
                    icon: Icons.settings,
                    title: 'SETTINGS',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SettingsScreen(),
                        ),
                      );
                    },
                  ),
                  DrawerTile(
                    icon: Icons.info,
                    title: 'ABOUT',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AboutScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            DrawerTile(
              icon: Icons.logout_outlined,
              title: 'EXIT',
              onPressed: () {
                exit(0);
              },
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
