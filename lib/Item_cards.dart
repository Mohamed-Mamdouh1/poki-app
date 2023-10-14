import 'package:flutter/material.dart';

import 'character.dart';
class ItemCard extends StatelessWidget {
  final Character character;
  final Function press;

  const ItemCard({Key key, this.character, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Card(
              elevation: 20,
              child: Column(
                children: [
                  Container(

                    child: Hero(
                      tag: '${character.id}',
                      child: Image.asset(character.image),
                    ),

                  ),
                  Text(
                    character.title,
                    style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}