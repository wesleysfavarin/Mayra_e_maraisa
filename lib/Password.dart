import 'package:flutter/material.dart';
import 'package:mayaraemaraisa/SuccessScreen.dart';
import 'package:passwordfield/passwordfield.dart';

class PasswordScreen extends StatelessWidget {

  final _pageController = PageController();

  String _password;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Senha 4 digitos"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        child: new Column(
          children: <Widget>[

            SizedBox(height: 15.0),
            Text("Agora so falta sua senha de compra", style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,

            ), textAlign: TextAlign.start,),
            SizedBox(height: 15.0),
        TextFormField(
        decoration: const InputDecoration(
            labelText: 'Password',
            icon: const Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: const Icon(Icons.lock),
            )),
        validator: (val) => val.length < 4 ? 'Password too short.' : null,
        onSaved: (val) => _password = val,
        obscureText: true,
          keyboardType: TextInputType.numberWithOptions(),
      ),
            SizedBox(height: 15.0),
            SizedBox(width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: Text("Transferir pontos"),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SuccessScreen()));
                  },
                )
            ),
          ],
        ),
      ),
    );
  }
}