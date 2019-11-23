import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;
  FavouritesScreen(this.favouriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
        child: Text('You have not favourites yet!'),
      );
    }
    return ListView.builder(
      itemBuilder: (ctx, index) {
        final meal = favouriteMeals[index];
        return MealItem(
          id: meal.id,
          title: meal.title,
          imageUrl: meal.imageUrl,
          complexity: meal.complexity,
          affordability: meal.affordability,
          duration: meal.duration,
          removeItem: () {},
        );
      },
      itemCount: favouriteMeals.length,
    );
  }
}
