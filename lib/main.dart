import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mayaraemaraisa/confime.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Simular e transferir'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
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

                  Text("Simule e transfira", style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                  ),textAlign: TextAlign.center),

                  SizedBox(height: 15.0),

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.symmetric(horizontal: 10.0,vertical: 40.0),
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: CachedNetworkImageProvider("https://logodownload.org/wp-content/uploads/2017/09/smiles-logo.png"),fit: BoxFit.scaleDown)
                      ),
                    ),
                    Text("R\$2.000 ", style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold

                    ), textAlign: TextAlign.center,),
                    Text("32.000 pontos disponiveis ", style: TextStyle(
                      fontSize: 13.0,

                    ), textAlign: TextAlign.start,),
                  ],
                ),

                  ),
                  SizedBox(height: 20.0),
                  Slider(
                    onChanged: (value){},
                    min: 1,
                    max: 5,
                    value: 1.5,

                  ),
                  Row(
                    children: <Widget>[
                      Text("10.000 pontos", style: TextStyle(
                          color: Colors.grey.shade700
                      )),
                      Spacer(),
                      Text("32.500 pontos", style: TextStyle(
                          fontSize: 16.0
                      ),),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  SizedBox(width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text("Seguir para confirmar"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ConfirmScreen()));
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
