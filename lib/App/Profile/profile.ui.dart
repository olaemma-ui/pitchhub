import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitchub/App/Profile/profile.controller.dart';
import 'package:pitchub/Utils/constants.dart';
import 'package:pitchub/Utils/style.dart';
import 'package:pitchub/Widgets/app_button.widget.dart';

class ProfileView extends GetWidget<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GetBuilder<ProfileController>(
      builder: (controller) {
        log('profile');
        controller.accountListItemModel.clear();
        controller.setAccountListItem();
        controller.update();
        return ColoredBox(
          color: ColorConstant.light,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: controller.isLogedin
                ? ListView(
                    children: controller.accountListItemModel
                        .map((e) => ListTile(
                              leading: Icon(e.icon),
                              onTap: e.onTap,
                              title: Text(
                                e.title,
                                style: textTheme.labelMedium,
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                ),
                                onPressed: () {},
                              ),
                            ))
                        .toList(),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(AppConstants.notLogedinImage),
                      const SizedBox(height: 8),
                      Text(
                        'You\'re not Loged In',
                        style: textTheme.titleLarge,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Login or Signup to get access to other features and'
                        ' your personal profile.',
                        style: textTheme.labelMedium,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 16),
                      AppButton(
                        isActive: true,
                        onPressed: controller.setIsLogedIn,
                        value: 'Login',
                      ),
                      const SizedBox(height: 16),
                      AppButton(
                        isActive: true,
                        color: ColorConstant.brandAncent,
                        valueColor: ColorConstant.brand,
                        onPressed: () {},
                        value: 'Signup',
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
