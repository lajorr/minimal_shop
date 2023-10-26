import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal_shop/screens/home_screen.dart';
import 'package:minimal_shop/widgets/my_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0E1E1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.network(
                'https://lottie.host/74689002-7398-4872-97ba-f3f1b2468ad3/ZkErl6njoi.json',
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              'MINIMAL SHOP',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Made with Flutter',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              height: 90,
              width: 90,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.arrow_forward,
                size: 32,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
