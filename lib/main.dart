import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/buttonKonversi.dart';
import 'widgets/inputSuhu.dart';
import 'widgets/resultSuhu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = new TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double fahrenheit = 0;
  double reamur = 0;

  konversi() {
    //set state
    setState(() {
      inputUser = double.parse(etInput.text);
      reamur = 4 / 5 * inputUser;
      fahrenheit = 9 / 5 * inputUser + 32;
      kelvin = inputUser + 237;
    });
  }

  @override
  Widget build(BuildContext context) {
    var etInput;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputSuhu(etInput: etInput),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ResultSuhu(
                    result: kelvin, 
                    title: "kelvin",
                    ),
                  ResultSuhu(
                    result: reamur, 
                    title: "Reamur",
                    ),
                  ResultSuhu(
                    result: fahrenheit, 
                    title: "fahrenheit",
                    ),
                ],
              ),
              ButtonKoversi(
                konversi: konversi,
              )
            ],
          ),
        ),
      ),
    );
  }
}