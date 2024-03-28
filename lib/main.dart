import 'package:chathubs/core/configs/global.init.dart';
import 'package:chathubs/core/constants/theme/theme.dart';
import 'package:chathubs/core/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  // -- Initialize dependencies
  await Global.init();

  // --- Release app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chathubs',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode.system,
      theme: ChathubsAppTheme.lightTheme,
      darkTheme: ChathubsAppTheme.darkTheme,
    );
  }
}
