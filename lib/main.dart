import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/Providers/Favorites_provider.dart';
import 'package:provider_demo/favorites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => FavoritesProvider())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const Favorites(),
      ),
    );
  }
}
