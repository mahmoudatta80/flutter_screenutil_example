import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil_example/theming/my_colors.dart';
import 'package:flutter_screenutil_example/theming/my_styles.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;

  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? MyColors.mainBlue,
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        minimumSize: WidgetStateProperty.all(
          Size(
            double.infinity,
            60.h,
          ),
        ),
        shadowColor: WidgetStateProperty.all(
          Colors.grey,
        ),
        elevation: WidgetStateProperty.all(
          8,
        ),
      ),
      child: Text(
        text,
        style: MyStyles.font20WhiteSemiBold,
      ),
    );
  }
}
