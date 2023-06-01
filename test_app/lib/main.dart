import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/food_list/view_models/food_view_model.dart';
import 'food_list/ui/food_page_screen.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FoodViewModel()),
      ],
      child: MaterialApp(
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: const FoodPage(),
      ),
    );
  }
}
