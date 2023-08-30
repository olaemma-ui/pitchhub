import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/Utils/constants.dart';
import 'package:pitchub/Utils/enums.dart';
import 'package:pitchub/Utils/style.dart';
import 'package:pitchub/Widgets/app_button.widget.dart';
import 'package:pitchub/Widgets/app_textfield.widget.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.light,
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //     onPressed: () {
        //       Get.back();
        //     },
        //     icon: const Icon(CupertinoIcons.back)),
      ),
      body: SizedBox(
        width: 500,
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppConstants.logo,
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Create an Account',
                  style: textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Create an account to start using Mypichhub',
                  style: textTheme.labelMedium!
                      .copyWith(color: ColorConstant.dark),
                ),
                const SizedBox(
                  height: 32,
                ),
                AppTextField(
                  controller: controller,
                  label: 'Email Address',
                  animateFrom: AnimateFrom.top,
                  placeholder: 'example@domain.com',
                  keyboardType: TextInputType.emailAddress,
                  regex: r'^(([\w-0-9^<>()[\]\\.,;:\s@\"]{1,}))$',
                ),
                const SizedBox(
                  height: 12,
                ),
                AppTextField(
                  controller: controller,
                  label: 'Password',
                  animateFrom: AnimateFrom.right,
                  placeholder: 'Password',
                  keyboardType: TextInputType.emailAddress,
                  regex:
                      r'^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$',
                ),
                const SizedBox(
                  height: 12,
                ),
                AppTextField(
                  controller: controller,
                  label: 'Confirm Password',
                  animateFrom: AnimateFrom.bottom,
                  placeholder: 'Confirm Password',
                  keyboardType: TextInputType.emailAddress,
                  regex:
                      r'^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$',
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Checkbox(
                          activeColor: ColorConstant.brand,
                          value: true,
                          onChanged: (value) {}),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'I agree to receive mypitchhub Newsletter via Email.',
                            overflow: TextOverflow.clip,
                            style: textTheme.labelSmall,
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Checkbox(
                          activeColor: ColorConstant.brand,
                          value: true,
                          onChanged: (value) {}),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {},
                          child: Wrap(
                            children: [
                              Text(
                                'I have read and agreed to the ',
                                overflow: TextOverflow.clip,
                                style: textTheme.labelSmall,
                              ),
                              Text(
                                'Terms of Use',
                                overflow: TextOverflow.clip,
                                style: textTheme.labelSmall!
                                    .copyWith(color: ColorConstant.brand),
                              ),
                              Text(
                                ' and ',
                                overflow: TextOverflow.clip,
                                style: textTheme.labelSmall,
                              ),
                              Text(
                                'Privacy Policy',
                                overflow: TextOverflow.clip,
                                style: textTheme.labelSmall!
                                    .copyWith(color: ColorConstant.brand),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                AppButton(
                  isActive: true,
                  onPressed: () {},
                  value: 'Create Account',
                )
              ],
            )),
      ),
    );
  }
}
