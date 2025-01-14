import 'package:chathubs/core/services/storage.dart';
import 'package:chathubs/core/utils/storage.keys.dart';
import 'package:get/get.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();
  final _isLogin = false.obs;
  String token = '';
  bool get isLogin => _isLogin.value;
  bool get hasToken => token.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    token = StorageService.to.getString(STORAGE_USER_TOKEN_KEY);
    if (token.isNotEmpty) {
      _isLogin.value = true;
    }
  }

  // 保存 token
  Future<void> setToken(String value) async {
    await StorageService.to.setString(STORAGE_USER_TOKEN_KEY, value);
    token = value;
  }

  // 获取 profile
  // Future<String> getProfile() async {
  //   if (token.isEmpty) return "";
  // var result = await UserAPI.profile();
  // _profile(result);
  // _isLogin.value = true;
  // return StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
  // }

  Future<void> setUserActive() async {
    _isLogin.value = true;
  }

  // 保存 profile
  // Future<void> saveProfile(UserItem profile) async {
  //   _isLogin.value = true;
  //   StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
  //   _profile(profile);
  //   setToken(profile.access_token!);
  // }

  // Future<void> saveLogs(bool isLogin) async {
  //   _isLogin.value = isLogin;
  //   StorageService.to.setBool(STORAGE_USER_LOG, isLogin);
  // }

  // 注销
  // Future<void> onLogout() async {
  //   // if (_isLogin.value) await UserAPI.logout();
  //   await StorageService.to.remove(STORAGE_USER_TOKEN_KEY);
  //   await StorageService.to.remove(STORAGE_USER_PROFILE_KEY);
  //   _isLogin.value = false;
  //   token = '';
  //   Get.offAllNamed(AppRoutes.SIGN_IN);
  // }
}
