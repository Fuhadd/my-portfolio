import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themeapp/page/main_page.dart';

import 'provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

//assets/images/luxury.jpg
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: const HomePage(),
          );
        });
  }
}
