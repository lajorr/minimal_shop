import 'package:flutter/material.dart';
import 'package:minimal_shop/providers/item_provider.dart';
import 'package:minimal_shop/widgets/cart_tile.dart';
import 'package:minimal_shop/widgets/my_button.dart';
import 'package:minimal_shop/widgets/my_modal_sheet.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0E1E1),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Cart',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                child: Text(
                  'Check your cart before paying',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Consumer<ItemProvider>(
                builder: (context, itemP, _) {
                  final cartItems = itemP.cartList;

                  if (cartItems.isEmpty) {
                    return const Center(
                      child: Text('Your cart is empty ..'),
                    );
                  }
                  return ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return CartTile(
                        index: index,
                        image: item.image,
                        price: item.price,
                        title: item.title,
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              width: 300,
              height: 80,
              child: Center(
                child: Text(
                  'PAY NOW',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () => showDialog(
                context: context,
                builder: (context) => MyModalSheet(
                  onProceed: () {},
                  title: 'User wants to pay! Connect this app to your backend.',
                  action: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
