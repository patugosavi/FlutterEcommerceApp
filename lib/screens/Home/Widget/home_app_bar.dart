import 'package:ecommerceapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: EdgeInsets.all(15.w),
          ),
          onPressed: () {},
          icon: Image.asset(
            "images/icon.png",
            height: 15.h,
          ),
        ),
        IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: EdgeInsets.all(10.w),
            ),
            onPressed: () {},
            iconSize: 25.sp,
            icon: const Icon(Icons.notifications_outlined)),
      ],
    );
  }
}
