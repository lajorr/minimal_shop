// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.height = 60,
    this.width = 60,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final double height;
  final double width;
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: const Color(0xffEFEFEE),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: child,
      ),
    );
  }
}
