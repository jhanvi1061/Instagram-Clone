import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.grey.withOpacity(0.1),
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build() - Instagram");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      home: HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white),
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(backgroundColor: Colors.white),
      ),
    );
  }
}
