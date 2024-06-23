import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const AuthButton({required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r)),
            foregroundColor: Colors_App.blueColor,
            backgroundColor: Colors_App.whiteColor,
            textStyle: Theme.of(context).textTheme.titleMedium),
        onPressed: onPressed,
        child: Text(text));
  }
}
