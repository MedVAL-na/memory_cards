import 'package:flutter/material.dart';
import 'package:memory_cards/train_dict.dart';

import 'custom_colors.dart';
import 'edit_dict.dart';
import 'new_dict.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get floatingActionButton => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              height: 200.0,
              width: 400.0,
              decoration: BoxDecoration(
                  //color: tdTiledef,
                  //shape: BoxShape.rectangle,
                  //borderRadius: BorderRadius.all(Radius.circular(40))
                ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200.0,
                      width: 400.0, //width of button
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(tdTiledef,),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                    side: BorderSide()))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Add_new_dictionary()),
                          );
                        },
                        child: Text(
                          "Новый словарь",
                          style: TextStyle(fontSize: 20, color: tdText),
                        ),
                      ),
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 200.0,
              width: 400.0,
              decoration: BoxDecoration(
                  color: tdTiledef,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200.0,
                      width: 400.0, //width of button
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(tdTiledef,),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                    side: BorderSide()))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Edit_dictionary()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          height: 200.0,
                          width: 400.0,
                          child:  Column(
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
                            ]
                          ),),
                      ),
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 200.0,
              width: 400.0,
              decoration: BoxDecoration(
                  color: tdTiledef,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200.0,
                      width: 400.0, //width of button
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(tdTiledef,),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                    side: BorderSide()))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Train_dictionary()),
                          );
                        },
                        child: Text(
                          "Тренировать словарь",
                          style: TextStyle(fontSize: 20, color: tdText),
                        ),
                      ),
                    )
                  ]),
            ),
            /*Text(
                  '$_counter',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineMedium,
                ),*/
            /*Container(
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ),
                    child: IconButton(
                      onPressed:_incrementCounter,
                      icon: const Icon(Icons.add),
                    )
                ),*/
          ],
        ),
      ),
    );
  }
}






