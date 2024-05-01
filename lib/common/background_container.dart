import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/constants/constants.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key, required this.child, required this.color});

  final  Widget child; 
  final  Color color; 
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r), 
          topRight: Radius.circular(20.r)
        ),
        image: const DecorationImage(image: AssetImage('icons/test.svg'), fit: BoxFit.cover, opacity: 7),
      ),
      child: child,
    );
  }
}