// ignore_for_file: use_build_context_synchronously

import 'package:e_commerce/data/api/api_constants.dart';
import 'package:e_commerce/ui/screens/auth/login/login_screen.dart';
import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:e_commerce/ui/utils/my_shared_preferences.dart';
import 'package:e_commerce/ui/widgets/auth_textform_field.dart';
import 'package:e_commerce/ui/widgets/dialog_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/app_bar_logo.png'),
                IconButton(
                    onPressed: () {
                      DialogUtils.showMessage(
                        context,
                        title: "Sign Out",
                        content: "Do you really want to sign out?",
                        negActionName: "Yes",
                        negAction: () async {
                          DialogUtils.showLoading(context,
                              message: "Loading...");
                          MySharedPreferces.deleteData(
                              key: ApiConstants.userToken);
                          await Future.delayed(Durations.long2);
                          DialogUtils.hideLoading(context);
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            LoginScreen.routeName,
                            (Route<dynamic> route) => false,
                          );
                        },
                        posActionName: "Cancel",
                        posAction: () {},
                      );
                    },
                    icon: const Icon(
                      Icons.logout,
                      color: Colors_App.blueColor,
                    ))
              ],
            ),
            AuthTextFormField(
              fieldTitleStyle: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors_App.blueColor),

              // controller: _viewModel.userNameController,
              fieldTitle: "Your Full Name",
              hintText: "Ahmed Nafea",
            ),
            AuthTextFormField(
              fieldTitleStyle: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors_App.blueColor),

              // controller: _viewModel.userPhoneNoController,
              fieldTitle: "Your Mobile Number",
              hintText: "01062810822",
            ),
            AuthTextFormField(
              fieldTitleStyle: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors_App.blueColor),

              // controller: _viewModel.userEmailController,
              fieldTitle: "E-mail address",
              hintText: "Ahmednafea325@gmail.com",
            ),
            AuthTextFormField(
              fieldTitleStyle: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors_App.blueColor),

              // controller: _viewModel.uesrPasswordController,
              fieldTitle: "Password",
              hintText: "123456789",
              // obscureText: _isPasswordSecured,
              // suffixIcon: IconButton(
              //     icon: (_isPasswordSecured)
              //         ? const ImageIcon(AssetImage(
              //             'assets/images/eye_slash_icon.png'))
              //         : const ImageIcon(
              //             AssetImage('assets/images/eye_icon.png')),
              //     onPressed: () {
              //       // setState(() {
              //       //   _isPasswordSecured = !_isPasswordSecured;
              //       // });
              //     }),
            ),
          ],
        ),
      ),
    );
  }
}
