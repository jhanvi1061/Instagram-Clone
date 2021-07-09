import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './providers/post.dart';
import './providers/story.dart';
import './screens/home_screen.dart';
import './screens/specific_post_screen.dart';

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
        initialRoute: '/',
        onGenerateRoute: (settings) {
          final path = settings.name;
          print(path);
          print(path.split('/'));
          if (path.split('/')[1] == 'p') {
            return MaterialPageRoute(
              builder: (context) => SpecificPostscreen(
                id: path.split('/')[2],
              ),
            );
          }
          return null;
        },
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          accentColor: Colors.white,
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            textTheme: const TextTheme(
              headline6: const TextStyle(color: Colors.black),
            ),
          ),
          bottomSheetTheme: const BottomSheetThemeData(
            modalBackgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: const BorderRadius.vertical(
                top: const Radius.circular(17),
              ),
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
