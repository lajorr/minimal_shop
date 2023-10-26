// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:minimal_shop/widgets/my_modal_sheet.dart';
import 'package:provider/provider.dart';

import 'package:minimal_shop/providers/item_provider.dart';
import 'package:minimal_shop/widgets/image_container.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.index,
  }) : super(key: key);

  final String image;
  final String title;
  final double price;
  final int index;

  @override
  Widget build(BuildContext context) {
    void onRemove() {
      final itemP = Provider.of<ItemProvider>(context, listen: false);
      itemP.removeItem(index);
    }

    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: const Color(0xffEFEFEE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageContainer(
                image: image,
                size: 80,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$$price',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => MyModalSheet(
                title: 'Are you sure you want to remove this item?',
                onProceed: () => onRemove(),
              ),
            ),
            icon: const Icon(
              Icons.cancel_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
