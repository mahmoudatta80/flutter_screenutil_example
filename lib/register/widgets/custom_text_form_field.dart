import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil_example/theming/my_colors.dart';
import 'package:flutter_screenutil_example/theming/my_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final bool? obscureText;
  final Widget? suffixIcon;

  const CustomTextFormField({
    super.key,
    required this.text,
    this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      cursorColor: MyColors.mainBlue,
      style: MyStyles.font18BlackRegular,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        hintText: text,
        suffixIcon: suffixIcon,
        hintStyle: MyStyles.font16BlackRegular,
        filled: true,
        fillColor: MyColors.lightGrey,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: MyColors.mainBlue, width: 1.5.w),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
      ),
      obscureText: obscureText ?? false,
    );
  }
}
