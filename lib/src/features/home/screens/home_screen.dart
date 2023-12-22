import 'package:flutter/material.dart';
import 'package:flutterfolder/src/constants/sizes.dart';
import 'package:flutterfolder/src/constants/styles.dart';
import 'package:flutterfolder/src/features/custom_paint/screens/custom_paint_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          zDefaultPadding,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => CustomPaintScreen());
                },
                style: zCustomButtonStyle(6),
                child: const Text('Custom Paint'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
