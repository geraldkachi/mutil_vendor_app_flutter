import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food/common/appStyle.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';

class RestaurantTile extends StatelessWidget {
  const RestaurantTile({
    super.key,
    required this.restaurant,
  });

  final dynamic restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            height: 70.h,
            width: width,
            decoration: BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 70.w,
                          height: 70.h,
                          child: Image.network(restaurant['imageUrl'],
                              fit: BoxFit.cover),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 6.w, bottom: 2.w),
                            color: kGrey.withOpacity(0.6),
                            height: 16.h,
                            width: width,
                            child: RatingBarIndicator(
                              rating: 5,
                              itemCount: 6,
                              itemSize: 15.h,
                              itemBuilder: (context, i) => const Icon(
                                Icons.star,
                                color: kSecondary,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: restaurant['title'],
                        style: TextStyle(
                            fontSize: 11.w,
                            color: kDark,
                            fontWeight: FontWeight.w400),
                      ),
                      ReusableText(
                        text: 'Delivery time: ${restaurant['time']}',
                        style: TextStyle(
                            fontSize: 11.w,
                            color: kGrey,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: width * 0.7,
                        child: Text(
                          restaurant['coords']['address'],
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 9.w,
                              color: kGrey,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 5.h,
              right: 5.w,
              child: Container(
                width: 60.w,
                height: 19.h,
                decoration: BoxDecoration(
                  color: restaurant['isOpen'] == true ||
                          restaurant['isOpen'] == null
                      ? kPrimary
                      : kRed,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                    child: ReusableText(
                        text: 'Open',
                        style: appStyle(12, kLightWhite, FontWeight.bold))),
              ))
        ],
      ),
    );
  }
}
