import 'package:clothes_app/model/clothes.dart';
import 'package:clothes_app/screens/home/widget/categories_list.dart';
import 'package:clothes_app/screens/home/widget/clothes_item.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final clothesList = Clothes.generateClothes();
    return Column(
      children: [
        CategoriesList('New Arrival'),
        Container(
          height: 280,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 25, ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ClothesItem(clothesList[index]), separatorBuilder: (_, index) => SizedBox(width: 10,), itemCount: clothesList.length),
        )
      ],
    );
  }
}