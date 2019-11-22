import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
      ),
      body: Container(
        child: Text('The meal id is: $mealId'),
      ),
    );
  }
}
