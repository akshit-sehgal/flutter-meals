import 'package:flutter/material.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(fontFamily: 'Raleway', fontSize: 20),
                ),
          ),
          textTheme:
              ThemeData.light().textTheme.apply(fontFamily: 'Raleway').copyWith(
                    body1: TextStyle(
                      color: Color.fromRGBO(20, 51, 51, 1),
                    ),
                    body2: TextStyle(
                      color: Color.fromRGBO(20, 51, 51, 1),
                    ),
                    title: TextStyle(
                        fontFamily: 'RobotoCondensed',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
        ),
        initialRoute: '/', // Default: '/'
        routes: {
          '/': (ctx) => CategoriesScreen(),
          CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        });
  }
}
