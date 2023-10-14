import 'package:flutter/material.dart';
import 'package:flutter_pokiapp2/second_screen.dart';

import 'Item_cards.dart';
import 'character.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: const Icon(Icons.table_rows_rounded),
                  onPressed: (){});}),
        title: Text('Poke App'),
        backgroundColor: Colors.blue[400],
      ),
      body: GridView.builder(itemCount: characters.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.75), itemBuilder: (context,index)=>ItemCard(
            character: characters[index],
            press: () => Navigator.push(context, MaterialPageRoute(builder:(context)=>
                SecondScreen(character: characters[index],))),
          )),
    );
  }
}