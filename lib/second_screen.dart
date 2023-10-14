import 'package:flutter/material.dart';

import 'character.dart';
class SecondScreen extends StatelessWidget {
  final Character character;

  const SecondScreen({Key key, this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        centerTitle: true,
        title: Text('${character.title}'),
        backgroundColor: Colors.blue[400],
        elevation: 0,

      ),
      body: Column(

        children: [

          Expanded(
            flex: 1,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container (
                    margin: EdgeInsets.only(top: 0),
                    height: 1000,
                    width: 500,
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24)
                        ))
                ),
              ),





              SizedBox(width: 300,),
              Padding(
                padding: const EdgeInsets.only(left: 120,bottom: 400),
                child: Hero(
                  tag: '${character.id}',
                  child: Image.asset(character.image,
                    fit: BoxFit.fill,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200,left: 170),
                child:   Text('${character.title}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              )
              ,
              Padding(
                padding: const EdgeInsets.only(top: 250,left: 160),
                child: Column(

                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text('Height: ${character.height} M'),
                    ),
                    Text('Weight: ${character.weight} Kg'),
                  ],
                ),

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0 ,top:100),
                    child: Text('Types', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Container(
                      padding: EdgeInsets.only(left: 20,top: 10),

                      child: Text('${character.types}'),
                      height: 40,
                      width: 80,


                      decoration: BoxDecoration(color:Colors.yellow[800],borderRadius: BorderRadius.circular(16)),),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        margin: EdgeInsets.only(left:100),
                        child: Text('Poison'),
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(color:Colors.yellow[800],borderRadius: BorderRadius.circular(16)),),
                    ],

                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0 ,top:250),
                    child: Text('Weakness', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(

                      children: [Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        margin: EdgeInsets.only(left: 35),
                        child: Text('${character.weakness}'),
                        height: 40,
                        width: 80,


                        decoration: BoxDecoration(color:Colors.red[400],borderRadius: BorderRadius.circular(16)),),
                        Container(
                          padding: EdgeInsets.only(left: 15,top: 10),
                          margin: EdgeInsets.only(left:50),
                          child: Text('Psychic'),
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(color:Colors.red[400],borderRadius: BorderRadius.circular(16)),),
                        Container(
                          padding: EdgeInsets.only(left: 30,top: 10),
                          margin: EdgeInsets.only(left:50),
                          child: Text('ice'),
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(color:Colors.red[400],borderRadius: BorderRadius.circular(16)),),
                      ],

                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0 ,top:430),
                    child: Text('Next Evolution', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(

                      children: [



                        Container(
                          padding: EdgeInsets.only(left: 15,top: 10),
                          margin: EdgeInsets.only(left:155),
                          child: Text('${character.nextEvolution}'),
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(color:Colors.greenAccent[400],borderRadius: BorderRadius.circular(16)),),

                      ],

                    ),
                  )
                ],
              ),
            ]
            ),
          ),

        ],
      ),

    );
  }
}