import 'package:flutter/material.dart';
import 'package:flutter_commerce/providers/products_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {

  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {

    final cartProduct = ref.watch(reducedProductsProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: cartProduct.map((e) {
                return Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Image.asset(e.image, width: 60, height: 60),
                      const SizedBox(width: 10),
                      Text('${e.title}.....'),
                      const Expanded(child: SizedBox()),
                      Text('${e.price}'),
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
