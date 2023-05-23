import 'package:flutter/material.dart';
import 'package:memory_cards/tile_sizes.dart';
import 'custom_colors.dart';

class Edit_dictionary extends StatelessWidget {
  const Edit_dictionary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdTiledef,
        centerTitle: true,
        title: Text(
          "Flashcards",
          style: TextStyle(
              fontSize: 25,
              color: tdText,
            ),
        ),
      ),
      body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(offset),
                height: heightwordTile,
                width: widthwordTile,
                decoration: BoxDecoration(
                    color:  tdTiledef,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(
                        "Редактировать существующий",
                        style: TextStyle(fontSize: 20, color: tdText),
                      ),
                      Text(
                        "словарь",
                        style: TextStyle(fontSize: 20, color:  tdText),
                      ),
                    ]),
              ),
            ],
          )

      ),
    );
  }
}