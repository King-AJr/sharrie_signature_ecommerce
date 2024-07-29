import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/components/bottom_nav_bar.dart';
import 'package:sharrie_signature_ecommerce/utils/themes/themes.dart';
import 'package:sharrie_signature_ecommerce/views/HomeScreen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'My Flutter App',
        themeMode: ThemeMode.system,
        theme: MyAppTheme.myTheme,
        initialRoute: '/home',
        routes: {
          '/home': (context) => const MyBottomNavigationBar(),
        });
  }
}
