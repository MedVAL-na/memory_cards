import 'package:flutter/material.dart';
import 'package:memory_cards/tile_sizes.dart';

import 'custom_colors.dart';


class Add_new_dictionary extends StatelessWidget {
  const Add_new_dictionary({super.key});
//TODO добавить хранение словаря
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounddef,
      appBar: AppBar(
        backgroundColor: tiledef,
        centerTitle: true,
        title: Text(
          "Flashcards",
            style: TextStyle(
              fontSize: textsizeheader,
              color: textdef,
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
                    color:  tiledef,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(
                        "Новый словарь",
                        style: TextStyle(fontSize: textsizedef, color: textdef),
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.all(offset),
                height: heightwordTile,
                width: widthwordTile,
                decoration: BoxDecoration(
                    color: tiledef,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50.0,
                      width: 300.0,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          prefixIcon:
                          Icon(Icons.add, color: textdef, size: 20),
                          prefixIconConstraints: BoxConstraints(
                            maxHeight: 32,
                            minWidth: 32,
                          ),
                          border: InputBorder.none,
                          hintText: "Имя словаря" ,
                          hintStyle: TextStyle(color: textdef, fontSize: textsizedef),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(offset),
                height: heightwordTile,
                width: widthwordTile,
                decoration: BoxDecoration(
                    color: tiledef,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50.0,
                      width: 300.0,
                      child: TextField(
                        decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon:
                        Icon(Icons.add, color: textdef, size: 20),
                        prefixIconConstraints: BoxConstraints(
                          maxHeight: 32,
                          minWidth: 32,
                        ),
                        border: InputBorder.none,
                        hintText: "Слово" ,
                        hintStyle: TextStyle(color: textdef, fontSize: textsizedef),
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(offset),
                height: heightwordTile,
                width: widthwordTile,
                decoration: BoxDecoration(
                    color: tiledef,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50.0,
                      width: 300.0,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          prefixIcon:
                          Icon(Icons.add, color: textdef, size: 20),
                          prefixIconConstraints: BoxConstraints(
                            maxHeight: 32,
                            minWidth: 32,
                          ),
                          border: InputBorder.none,
                          hintText: "Значение" ,
                          hintStyle: TextStyle(color: textdef, fontSize: textsizedef),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}