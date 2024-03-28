import 'package:chathubs/core/services/storage.dart';
import 'package:chathubs/core/store/config.dart';
import 'package:chathubs/core/store/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class Global {
  static Future init() async {
    final WidgetsBinding widgetsBinding =
        WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    setSystemUi();
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.lazyPut<ConfigStore>(() => ConfigStore());
    Get.lazyPut<UserStore>(() => UserStore());
    // Get.put(AuthenticationRepository());
    // Get.put(NetworkManager());
  }

  static void setSystemUi() {
    if (GetPlatform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(0, 113, 13, 13),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}
