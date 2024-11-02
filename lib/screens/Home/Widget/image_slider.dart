import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const ImageSlider(
      {super.key, required this.currentSlide, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200.h,
          width: double.infinity.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "images/slider.jpg",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/image1.png",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/slider3.png",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/jewelry.png",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/slider3.png",
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10.h,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentSlide == index ? 15.w : 8.w,
                  height: 8,
                  margin: EdgeInsets.only(right: 3.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: currentSlide == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
