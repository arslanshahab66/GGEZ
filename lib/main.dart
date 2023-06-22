import 'package:flutter/material.dart';
import 'package:googgame_ez/Providers/home_screen_provider.dart';
import 'package:googgame_ez/Providers/selected_container_provider.dart';
import 'package:googgame_ez/Providers/selected_list_tile_provider.dart';
import 'package:googgame_ez/screens/GoogleMap/google_map.dart';
import 'package:googgame_ez/screens/Splash/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SelectedContainerProvider>(
          create: (context) => SelectedContainerProvider(),
        ),
        ChangeNotifierProvider<SelectedListTileProvider>(
          create: (context) => SelectedListTileProvider(),
        ),
         ChangeNotifierProvider<HomeScreenModel>(
          create: (context) => HomeScreenModel(),
        ),
        // Add more providers as needed
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
