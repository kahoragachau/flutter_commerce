import 'package:flutter/material.dart';
import 'package:flutter_commerce/shared/cart_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Garage Sale Product"),
        actions: [CartIcon()],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: 0,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9,
          ), 
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey.withOpacity(0.05),
            );
          }
        ),
      ),
    );
  }
}
