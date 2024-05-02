import 'package:flutter/material.dart';
import 'package:multi_vendor_food/common/appStyle.dart';
import 'package:multi_vendor_food/common/background_container.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';
import 'package:multi_vendor_food/constants/uidata.dart';
import 'package:multi_vendor_food/views/home/widget/restaurant_tile.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
       appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kSecondary,
        title:  ReusableText(text: "Nearby Restaurants", 
        style: appStyle(13, kGrey, FontWeight.w600)),
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(restaurants.length, (i) {
            var restaurant = restaurants[i];
            return RestaurantTile(restaurant: restaurant);
          }),
        ),
      ),
    );
  }
}
