import 'package:clothes_app/screens/home/widget/categories_list.dart';
import 'package:flutter/material.dart';

class BestSell extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesList('Best Of List'),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Stack(
              children: [
                Row()
              ],),
          ),
         
        ],
      ),
    );
  }
}