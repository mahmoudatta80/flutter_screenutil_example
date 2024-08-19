import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil_example/register/widgets/custom_text_button.dart';
import 'package:flutter_screenutil_example/register/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil_example/theming/my_colors.dart';

class BuildRegisterForm extends StatefulWidget {
  const BuildRegisterForm({super.key});

  @override
  State<BuildRegisterForm> createState() => _BuildRegisterFormState();
}

class _BuildRegisterFormState extends State<BuildRegisterForm> {
  bool passwordIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          text: 'User Name',
        ),
        SizedBox(height: 29.h),
        const CustomTextFormField(
          text: 'Email',
        ),
        SizedBox(height: 29.h),
        CustomTextFormField(
          text: 'Password',
          obscureText: !passwordIsVisible,
          suffixIcon: GestureDetector(
            onTap: () {
              passwordIsVisible = !passwordIsVisible;
              setState(() {});
            },
            child: Icon(
              !passwordIsVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: MyColors.mainBlue,
            ),
          ),
        ),
        SizedBox(height: 29.h),
        CustomTextFormField(
          text: 'Confirm Password',
          obscureText: !passwordIsVisible,
          suffixIcon: GestureDetector(
            onTap: () {
              passwordIsVisible = !passwordIsVisible;
              setState(() {});
            },
            child: Icon(
              !passwordIsVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: MyColors.mainBlue,
            ),
          ),
        ),
        SizedBox(height: 53.h),
        const CustomTextButton(
          text: 'Register',
        ),
      ],
    );
  }
}
