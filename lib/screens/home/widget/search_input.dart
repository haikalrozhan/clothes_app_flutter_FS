import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final tagList = ['Woman', 'T-shirt', 'Dress'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:25, left:25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                      ),
                    hintText: 'Search Esthetic Shoe',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Image.asset('assets/icons/search.png'),
                      width: 20,
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/icons/filter.png', width: 25,),

              )
            ],
          ),
          Row(
            children: 
              tagList.map((tag) => Container(
                margin: EdgeInsets.only(top:7, right: 7),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular((10)),
                  color: Colors.grey[500]
                ),
                child: Text(tag, style: TextStyle(color: Colors.white),),
              )).toList(),
            
          ),
        ],
      ),
    );
  }
}
