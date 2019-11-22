import 'package:flutter/material.dart';
import './category_item.dart';
import './dummy-data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map((catData) {
          return CategoryItem(
            title: catData.title,
            color: catData.color,
          );
        }).toList(),
        physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}