import 'package:chathubs/features/home/index.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController();
  final state = HomeState();

  @override
  void onInit() {
    FlutterNativeSplash.remove();
    print('Called');
    super.onInit();
  }
}
