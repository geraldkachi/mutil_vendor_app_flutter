import 'package:flutter/material.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        elevation: 0.3,
        title:  ReusableText(text: "All Nearby Restaurants", 
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
      ),
      body: Center(child: Text("All Nearby Restaurants"),),
    );
  }
}