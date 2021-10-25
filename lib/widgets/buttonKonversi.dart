import 'package:flutter/material.dart';

class ButtonKoversi extends StatelessWidget {
  const ButtonKoversi({
    Key? key,
    required this.konversi,
  }) : super(key: key);

  final Function konversi;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        onPressed: konversi, 
        color: Colors.lightBlue,
        textColor: Colors.white,
        child: Text("Konversi"),
      ),
    );
  }
}
