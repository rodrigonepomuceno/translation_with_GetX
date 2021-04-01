import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_translation/routes/app_pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translation'),
      ),
      body: Column(
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
          SizedBox(
            height: 30,
          ),
          MyButton(
            onTap: () {
              Get.toNamed(Routes.SECONDPAGE);
            },
            title: 'Next Page',
          ),
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const MyButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 35,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
          border: Border.all(
            color: Colors.blue,
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
