import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import '../../../helpers/google_sign_in.dart';

import '../../../core/widgets/already_have_account_text.dart';
import '../../../core/widgets/sign_in_with_google_text.dart';
import '../../../core/widgets/login_and_signup_animated_form.dart';
import '../../../core/widgets/terms_and_conditions_text.dart';
import '../../../theming/styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: 30.w, right: 30.w, bottom: 15.h, top: 5.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.font24Blue700Weight,
                ),
                Gap(8.h),
                Text(
                  'Sign up now and start exploring Age Vision APP',
                  style: TextStyles.font14Grey400Weight,
                ),
                Gap(8.h),
                Column(
                  children: [
                     EmailAndPassword(
                      isSignUpPage: true,
                    ),
                    Gap(10.h),
                    const SigninWithGoogleText(),
                    Gap(5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.google),
                          onPressed: () async {
                            await GoogleSignin.signInWithGoogle(context);
                          },
                        ),
                      ],
                    ),
                    const TermsAndConditionsText(),
                    Gap(15.h),
                    const AlreadyHaveAccountText(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
