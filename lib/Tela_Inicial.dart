import 'package:flutter/material.dart';
import 'package:matematica/Tela_Divisao.dart';
import 'package:matematica/Tela_Duvidas.dart';
import 'package:matematica/Tela_Mult.dart';
import 'package:matematica/Tela_Soma.dart';
import 'package:matematica/Tela_Sub.dart';


class Tela_Inicial extends StatefulWidget {


  @override
  _Tela_InicialState createState() => _Tela_InicialState();
}

class _Tela_InicialState extends State<Tela_Inicial> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
    backgroundColor: Color(0xFF2B6630),



      body: Stack(


        children: <Widget> [
       Padding(padding: EdgeInsets.only(left: 90),

         child: Image.asset("image/logo.png"),),
          //CONTAINER IMG LOGO
          Container(


            height: size.height *.7,
            child: Padding(

              padding: EdgeInsets.only(top: 66),
              //child:  Image.network('', alignment: Alignment.topCenter,),
            ),

          ),

          Column(


            children: <Widget> [
              Padding(padding: EdgeInsets.all(50),),
              // Text('Seja bem-vindo(a)\n ${widget.nomeUsuario.toUpperCase()}!', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
              Container(


                height: 120,
                margin: EdgeInsets.only(bottom: 20),

              ),
              Expanded(


                child:  GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(16),

                  children: <Widget> [



                    Card(

                      margin: EdgeInsets.all(2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.black,
                      elevation:4 ,
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [

                          FlatButton(

                            child:  Image.asset('image/ic_soma.jpg'),
                            onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Soma() ),
    );

                              print('Transição de tela funcionando'); },
                          ),
                          Text('Soma ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Russo'),),
                          //SvgPicture.network('https://cdn.worldvectorlogo.com/logos/imc.svg', height: 100,) ,

                        ],
                      ),

                    ),
                    Card(
                      margin: EdgeInsets.all(2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.black,
                      elevation:4 ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          FlatButton(
                            child:  Image.asset('image/ic_sub.jpg'),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Sub() ),
                              );

                              print('Transição de tela funcionando');
                              },
                          ),
                          Text('Subtração', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Russo'),),
                          //SvgPicture.network('https://cdn.worldvectorlogo.com/logos/imc.svg', height: 100,) ,

                        ],
                      ),

                    ),
                    Card(
                      margin: EdgeInsets.all(2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.black,
                      elevation:4 ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          FlatButton(
                            child:  Image.asset('image/ic_mult.jpg'),
                            onPressed: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Mult() ),
                              );

                              print('Transição de tela funcionando'); },
                          ),
                          Text('Multiplicação', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Russo'),),
                          //SvgPicture.network('https://cdn.worldvectorlogo.com/logos/imc.svg', height: 100,) ,

                        ],
                      ),

                    ),
                    Card(
                      margin: EdgeInsets.all(2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.black,
                      elevation:4 ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          FlatButton(
                            child:  Image.asset('image/ic_div.jpg'),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Divisao() ),
                              );

                              print('Transição de tela funcionando'); },
                          ),
                          Text('Divisão', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Russo'),),
                          //SvgPicture.network('https://cdn.worldvectorlogo.com/logos/imc.svg', height: 100,) ,

                        ],
                      ),

                    ),

                  ],
                ),)

            ],
          ),

          Row(

            children:<Widget> [

              Padding(padding: EdgeInsets.fromLTRB(253,670,0,0),
              child: RaisedButton(
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Sobre() ),
                  );

                  print('Transição de tela funcionando...');
                },
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text("Sobre o App", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Russo'),),
              ),
              ),
            ],
          ),
          Row(
            children:<Widget> [
          Padding(padding: EdgeInsets.fromLTRB(10,830,0,0),
          child: Text("Desenvolvido por Diego Sarmanho", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Russo', color: Colors.white),),
          ),
            ],

          ),
        ],


      ) ,


    );
  }
}
