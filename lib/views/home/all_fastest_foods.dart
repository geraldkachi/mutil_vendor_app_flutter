import 'package:flutter/material.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0.3,
        title:  ReusableText(text: "AllFastestFoods", 
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
      ),
      body: const Center(child: Text("AllFastestFoods"),),
    );
  }
}