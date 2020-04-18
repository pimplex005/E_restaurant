import 'package:flutter/material.dart';
import '../data/category_data.dart';
import '../models/category_model.dart';
import '../widgets/restaurant_card.dart';
class RestaurantCategory extends StatelessWidget {
  final List<category> _categories=categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext Context,int index){
            return RestaurantCard(
              categoryName: _categories[index].categoryName,
              imagePath: _categories[index].imagePath,
              numberOfItems: _categories[index].numbersOfItems,
            );
        }
      ),
    );
  }
}