import 'package:flutter/material.dart';
import 'package:mayaraemaraisa/Password.dart';


class ConfirmScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

        title: Text("Confirmar transferencia"),
      ),
      body: Stack(
        children: <Widget>[

          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){},
              )
            ],
          ),

          Positioned(
            top: 280,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text("Quantia a transferir", style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                  ),textAlign: TextAlign.center),
                  Text("5.000 pontos", style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue
                  ),textAlign: TextAlign.start),

                  SizedBox(height: 15.0),

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Total pontos", style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,

                        ), textAlign: TextAlign.start,),
                        Text("32.500 ", style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,

                        ), textAlign: TextAlign.start,),
                        SizedBox(height: 15.0),
                        Text("Quantidade de pontos a resgatar", style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,

                        ), textAlign: TextAlign.start,),
                        Text("3.000", style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,

                        ), textAlign: TextAlign.start,),
                        SizedBox(height: 15.0),
                        Text("Saldo apos resgate", style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,

                        ), textAlign: TextAlign.start,),
                        Text("28.000", style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,

                        ), textAlign: TextAlign.start,),
                        SizedBox(height: 15.0),
                        Text("Apos a transferencia dos pontos o cliente estara sujeito as regras do programa TudoAzul", style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,

                        ), textAlign: TextAlign.start,),
                      ],
                    ),

                  ),
                  SizedBox(height: 20.0),

                  SizedBox(width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text("Seguir para senha"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PasswordScreen()));
                        },
                      )
                  ),
                  SizedBox(height: 10.0),
                  Center(child: Icon(Icons.keyboard_arrow_up)),
                  Center(child: Text("Saiba mais", style: TextStyle(
                      color: Colors.blue
                  ),),),
                ],
              ),
            ),
          ),
          Positioned(
            top: 301,
            right: 40,
            child: CircleAvatar(
                radius: 20.0,
                foregroundColor: Colors.grey,
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.close)),
          )
        ],
      ),

    );
  }
}
