import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:pitchub/App/Profile/model/account_list.model.dart';
import 'package:pitchub/Utils/routes.dart';

class ProfileController extends GetxController {
  bool isLogedin = false;

  List<AccountListItemModel> accountListItemModel = [];

  @override
  void onInit() {
    // isLogedin = true;
    setAccountListItem();
    super.onInit();
  }

  void setAccountListItem() {
    accountListItemModel.add(AccountListItemModel(
      title: 'My Favourites',
      route: '',
      icon: FlutterIcons.favorite_border_mdi,
    ));
    accountListItemModel.add(AccountListItemModel(
      title: 'Recently Viewed',
      route: '',
      icon: FlutterIcons.eye_outline_mco,
    ));
    accountListItemModel.add(AccountListItemModel(
      title: 'Notifications',
      route: '',
      icon: FlutterIcons.notification_ant,
    ));
    accountListItemModel.add(AccountListItemModel(
      title: 'Settings',
      route: '',
      icon: FlutterIcons.setting_ant,
    ));
    accountListItemModel.add(AccountListItemModel(
      title: 'Log Out',
      route: '',
      icon: FlutterIcons.logout_ant,
      onTap: () {
        setIsLogedIn();
      },
    ));
  }

  setIsLogedIn() {
    isLogedin = !isLogedin;
    Get.toNamed(AppRoute.login);
    update();
  }
}
