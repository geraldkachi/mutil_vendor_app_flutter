import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:multi_vendor_food/common/appStyle.dart';
import 'package:multi_vendor_food/common/reusable_text.dart';
import 'package:multi_vendor_food/constants/constants.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({ super.key,required this.food });

  final dynamic food;

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
                          child: Image.network(food['imageUrl'],
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
                        text: food['title'],
                        style: TextStyle(
                            fontSize: 11.w,
                            color: kDark,
                            fontWeight: FontWeight.w400),
                      ),
                      ReusableText(
                        text: 'Delivery time: ${food['time']}',
                        style: TextStyle(
                            fontSize: 11.w,
                            color: kGrey,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: width * 0.7,
                        child: SizedBox(
                          width: width * 0.7,
                          height: 18.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: food['additives'].length,
                            itemBuilder: (context, i) {
                              var additive = food['additives'][i]; 
                              return Container(
                                margin: EdgeInsets.only(right: 5.w),
                                decoration: BoxDecoration(
                                  color: kSecondaryLight,
                                   borderRadius: BorderRadius.all(
                                    Radius.circular(9.r)
                                   ),
                                ),
                                child: Center(
                                  child: Padding(padding: EdgeInsets.all(2.h), 
                                  child: ReusableText(text: additive['title'], style: appStyle(8, kGrey, FontWeight.w400 )),
                                  ),
                                ),
                              );
                          }),
                          ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 6.h,
              right: 75.w,
              child: Container(
                width: 19.w,
                height: 19.h,
                padding: EdgeInsets.all(10.sh),
                decoration: BoxDecoration(
                  color: kSecondary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                    child: Icon(MaterialCommunityIcons.cart_plus, size: 15.h, color: kLightWhite,)),
              )),
          Positioned(
              top: 5.h,
              right: 5.w,
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  width: 60.w,
                  height: 19.h,
                  decoration: BoxDecoration(
                    color: kPrimary,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                      child: ReusableText(
                          text: "\$ ${food['price'].toStringAsFixed(2)}",
                          style: appStyle(12, kLightWhite, FontWeight.bold))),
                ),
              )),
        ],
      ),
    );
  }
}