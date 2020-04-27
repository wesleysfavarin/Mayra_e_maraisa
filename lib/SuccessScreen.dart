import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blueAccent,
      child: Text("Pontos transferidos com sucesso",style: TextStyle(
        color: Colors.white,
        fontSize: 25.0

      ),textAlign: TextAlign.center,),
    );
  }
}
