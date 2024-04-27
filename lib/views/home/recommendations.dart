import 'package:flutter/material.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        title:  ReusableText(text: "Recommendations", 
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
      ),
      body: Center(child: Text("Recommendations"),),
    );
  }
}