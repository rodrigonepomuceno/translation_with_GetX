import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_translation/home_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translation'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    onTap: () {
                      Get.updateLocale(Locale('en', 'US'));
                    },
                    title: 'EN',
                  ),
                  SizedBox(width: 10),
                  MyButton(
                    onTap: () {
                      Get.updateLocale(Locale('es', 'ES'));
                    },
                    title: 'ES',
                  ),
                  SizedBox(width: 10),
                  MyButton(
                    onTap: () {
                      Get.updateLocale(Locale('pt', 'BR'));
                    },
                    title: 'PT',
                  ),
                ],
              ),
            ),
            MyText(title: 'city'.tr),
            MyText(title: 'beach'.tr),
            MyText(title: 'world'.tr),
            MyText(title: 'sea'.tr),
            MyText(title: 'car'.tr),
            MyText(title: 'men'.tr),
            MyText(title: 'women'.tr),
            MyText(title: 'boy'.tr),
            MyText(title: 'girl'.tr),
          ],
        ),
      ),
    );
  }
}
