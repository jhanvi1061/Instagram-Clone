import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './providers/post.dart';
import './providers/story.dart';
import './screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      // systemNavigationBarColor: Colors.transparent,
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StoryProvider()),
        ChangeNotifierProvider(create: (context) => PostProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram',
        home: HomeScreen(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: TextTheme(
              headline6: TextStyle(color: Colors.black),
            ),
          ),
          bottomNavigationBarTheme:
              BottomNavigationBarThemeData(backgroundColor: Colors.white),
        ),
      ),
    );
  }
}
