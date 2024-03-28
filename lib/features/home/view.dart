import 'package:chathubs/core/constants/sizes.dart';
import 'package:chathubs/features/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(ChathubsSizes.defaultSpace),
          child: Container(
            child: Text(controller.state.title.value),
          ),
        ),
      ),
    );
  }
}
