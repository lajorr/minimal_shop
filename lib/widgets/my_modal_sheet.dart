// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyModalSheet extends StatelessWidget {
  const MyModalSheet({
    Key? key,
    required this.onProceed,
    required this.title,
    this.action,
  }) : super(key: key);

  final Function onProceed;
  final String title;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    void onAdd() {
      onProceed();
      Navigator.of(context).pop();
    }

    return AlertDialog(
      backgroundColor: const Color(0xffE0E1E1),
      content: Text(
        title,
      ),
      actions: [
        if (action == null)
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
        if (action == null)
          ElevatedButton(
            onPressed: onAdd,
            child: const Text('Yes'),
          ),
        if (action != null) action!,
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
