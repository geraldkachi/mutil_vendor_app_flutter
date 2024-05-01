import 'package:flutter/material.dart';
import 'package:multi_vendor_food/common/background_container.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/uidata.dart';
import 'package:multi_vendor_food/views/home/widget/restaurant_tile.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: ReusableText(
            text: "Nearby Restaurants",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
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
