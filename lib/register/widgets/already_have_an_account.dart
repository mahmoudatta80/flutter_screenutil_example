import 'package:flutter/material.dart';
import 'package:flutter_screenutil_example/theming/my_styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: MyStyles.font16BlackRegular,
          ),
          TextSpan(
            text: ' Login',
            style: MyStyles.font16MainBlueSemiBold,
          ),
        ],
      ),
    );
  }
}
