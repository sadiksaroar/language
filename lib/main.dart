import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:language_change/translations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(),
      title: 'Flutter Demo',
      locale: Locale('en', 'US'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome '.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello'.tr),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                var locale = Locale('es', 'ES');
                Get.updateLocale(locale);
              },
              child: Text("Change to Spansh"),
            ),
            ElevatedButton(
              onPressed: () {
                var locale = Locale('es', 'US');
                Get.updateLocale(locale);
              },
              child: Text("Change to English"),
            ),
          ],
        ),
      ),
    );
  }
}
