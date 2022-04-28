import 'package:flutter/material.dart';
import 'dart:math';

import 'package:matematica/Tela_Inicial.dart';

class Tela_Sub extends StatefulWidget {
  const Tela_Sub({Key? key}) : super(key: key);

  @override
  _Tela_SubState createState() => _Tela_SubState();
}

class _Tela_SubState extends State<Tela_Sub> {
   int _x = Random().nextInt(11);
   int _y = Random().nextInt(11);
   late int _resultado = _x - _y;


   int _scorePositivo =0;
   int _scoreNegativo =0;
   double _scoreAproveitamento = 100;

   int _gabarito =0;

   int _contResp=4;



  TextEditingController _textEditingControllerResposta = TextEditingController();


  void _exibeGab(){

    int a = _x;
    int b = _y;
    int result = a - b;
    int _cont = 0;


    _contResp--;

    setState(() {



      if(_contResp > _cont){
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("GABARITO", style: TextStyle(fontWeight: FontWeight.normal, fontFamily: 'Guy', fontSize: 50),),
              content: new Text('O resultado correto  é:\n  \n'+'$a' + " - " + '$b ' + " = " + '$result'+'\n', style: TextStyle(color: Colors.red,fontWeight: FontWeight.normal, fontFamily: 'Guy', fontSize: 35),),
              actions: <Widget>[
                new FlatButton(
                  child: new Text("Fechar",style: TextStyle(fontFamily: 'Guy'),),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }else {
        setState(() {
          _contResp =0;
        });
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("ATENÇÃO", style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Guy', fontSize: 50, color: Colors.red),),
              content: new Text('Tentativas esgotadas! Você possui somente 4 (quatro) tentativas', style: TextStyle(fontWeight: FontWeight.normal, fontFamily: 'Guy', fontSize: 20),),
              actions: <Widget>[
                new FlatButton(
                  child: new Text("Fechar",style: TextStyle(fontFamily: 'Guy'),),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }

    });



  }


  //MÉTODO PARA REINICIAR OPERAÇÃO E REINICIAR O PLACAR
  void _reiniciaOp(){
    var randomx = Random().nextInt(11);
    var randomy = Random().nextInt(11);

    setState(() {
      while(randomx < randomy) {
        randomy =  Random().nextInt(randomx);
      }

      _x = randomx;
      _y = randomy;

      _scorePositivo = 0;
      _scoreNegativo = 0;
      _scoreAproveitamento = 100;

      _contResp = 4;

      _textEditingControllerResposta.clear();
    });

  }




   void _nivelDificuldade(){

     _scorePositivo;

     setState(() {
       if(_scorePositivo >= 4){

         try{
           var randomx = Random().nextInt(21);
           var randomy = Random().nextInt(21);
           while(randomx < randomy)
             randomy =  Random().nextInt(randomx);
           _x = randomx;
           _y = randomy;

         }catch(IntegerDivisionByZeroException){
           print('Ops.... Corrigindo...');
         }

         if(_scorePositivo == 4){

           showDialog(
             context: context,
             builder: (BuildContext context) {
               return AlertDialog(
                 title: new Text("Parabéns! Você acabou de subir para o nível 2!", style: TextStyle(fontFamily:"Guy",fontWeight: FontWeight.bold),),

                 content: Container(

                   width: 400,
                   height: 250,

                   child: OverflowBox(
                     minWidth:0 ,
                     minHeight:0 ,
                     maxWidth: double.infinity,
                     child: new Image(
                       image: AssetImage("image/congrats.png"),
                       fit: BoxFit.cover,
                     ),


                   ),

                 ),
                 actions: <Widget>[

                   Row(
                     children: <Widget> [
                       new FlatButton(
                         child: new Text("Ok", style: TextStyle(fontFamily:"Guy", fontWeight: FontWeight.bold),),
                         onPressed: () {
                           Navigator.of(context).pop();
                         },
                       ),


                     ],
                   )

                 ],
               );
             },
           );
         }


       } if (_scorePositivo >= 12){

       try{
         var randomx = Random().nextInt(41);
         var randomy = Random().nextInt(41);
         while(randomx < randomy)
           randomy =  Random().nextInt(randomx);
         _x = randomx;
         _y = randomy;

       }catch(IntegerDivisionByZeroException){
           print('Ops.... Corrigindo...');
         }

         if(_scorePositivo == 12){
           showDialog(
             context: context,
             builder: (BuildContext context) {
               return AlertDialog(
                 title: new Text("Parabéns! Você acabou de subir para o nível 3!", style: TextStyle(fontFamily:"Guy",fontWeight: FontWeight.bold),),

                 content: Container(

                   width: 400,
                   height: 250,

                   child: OverflowBox(
                     minWidth:0 ,
                     minHeight:0 ,
                     maxWidth: double.infinity,
                     child: new Image(
                       image: AssetImage("image/congrats.png"),
                       fit: BoxFit.cover,
                     ),


                   ),

                 ),
                 actions: <Widget>[

                   Row(
                     children: <Widget> [
                       new FlatButton(
                         child: new Text("Ok", style: TextStyle(fontFamily:"Guy", fontWeight: FontWeight.bold),),
                         onPressed: () {
                           Navigator.of(context).pop();
                         },
                       ),


                     ],
                   )

                 ],
               );
             },
           );
         }
       if(_scorePositivo == 15 ){
         setState(() {

           _contResp++;

           showDialog(
             context: context,
             builder: (BuildContext context) {
               return AlertDialog(
                 title: new Text("Parabéns! Você acabou ganhar mais uma ajuda!", style: TextStyle(fontFamily:"Guy",fontWeight: FontWeight.bold),),

                 content: Container(

                   width: 400,
                   height: 250,

                   child: OverflowBox(
                     minWidth:0 ,
                     minHeight:0 ,
                     maxWidth: double.infinity,
                     child: new Image(
                       image: AssetImage("image/positivo.png"),
                       fit: BoxFit.cover,
                     ),


                   ),

                 ),
                 actions: <Widget>[

                   Row(
                     children: <Widget> [
                       new FlatButton(
                         child: new Text("Ok", style: TextStyle(fontFamily:"Guy", fontWeight: FontWeight.bold),),
                         onPressed: () {
                           Navigator.of(context).pop();
                         },
                       ),


                     ],
                   )

                 ],
               );
             },
           );


         });
       }

       } if(_scorePositivo >= 20){


         try{
           var randomx = Random().nextInt(81);
           var randomy = Random().nextInt(81);
           while(randomx < randomy)
             randomy =  Random().nextInt(randomx);
           _x = randomx;
           _y = randomy;

         }catch(IntegerDivisionByZeroException){
           print('Ops.... Corrigindo...');
         }

         if(_scorePositivo == 20){
           showDialog(
             context: context,
             builder: (BuildContext context) {
               return AlertDialog(
                 title: new Text("Parabéns! Você acabou de subir para o nível 4!", style: TextStyle(fontFamily:"Guy",fontWeight: FontWeight.bold),),

                 content: Container(

                   width: 400,
                   height: 250,

                   child: OverflowBox(
                     minWidth:0 ,
                     minHeight:0 ,
                     maxWidth: double.infinity,
                     child: new Image(
                       image: AssetImage("image/congrats.png"),
                       fit: BoxFit.cover,
                     ),


                   ),

                 ),
                 actions: <Widget>[

                   Row(
                     children: <Widget> [
                       new FlatButton(
                         child: new Text("Ok", style: TextStyle(fontFamily:"Guy", fontWeight: FontWeight.bold),),
                         onPressed: () {
                           Navigator.of(context).pop();
                         },
                       ),


                     ],
                   )

                 ],
               );
             },
           );
         }


       }if (_scorePositivo >= 30){


         try{
           var randomx = Random().nextInt(121);
           var randomy = Random().nextInt(121);
           while(randomx < randomy)
             randomy =  Random().nextInt(randomx);
           _x = randomx;
           _y = randomy;

         }catch(IntegerDivisionByZeroException){
           print('Ops.... Corrigindo...');
         }

         if(_scorePositivo == 30){
           showDialog(
             context: context,
             builder: (BuildContext context) {
               return AlertDialog(
                 title: new Text("Parabéns! Você acabou de subir para o nível 5!", style: TextStyle(fontFamily:"Guy",fontWeight: FontWeight.bold),),

                 content: Container(

                   width: 400,
                   height: 250,

                   child: OverflowBox(
                     minWidth:0 ,
                     minHeight:0 ,
                     maxWidth: double.infinity,
                     child: new Image(
                       image: AssetImage("image/congrats.png"),
                       fit: BoxFit.cover,
                     ),


                   ),

                 ),
                 actions: <Widget>[

                   Row(
                     children: <Widget> [
                       new FlatButton(
                         child: new Text("Ok", style: TextStyle(fontFamily:"Guy", fontWeight: FontWeight.bold),),
                         onPressed: () {
                           Navigator.of(context).pop();
                         },
                       ),


                     ],
                   )

                 ],
               );
             },
           );
         }
         if(_scorePositivo == 35 ){
           setState(() {

             _contResp++;

             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title: new Text("Parabéns! Você acabou ganhar mais uma ajuda!", style: TextStyle(fontFamily:"Guy",fontWeight: FontWeight.bold),),

                   content: Container(

                     width: 400,
                     height: 250,

                     child: OverflowBox(
                       minWidth:0 ,
                       minHeight:0 ,
                       maxWidth: double.infinity,
                       child: new Image(
                         image: AssetImage("image/positivo.png"),
                         fit: BoxFit.cover,
                       ),


                     ),

                   ),
                   actions: <Widget>[

                     Row(
                       children: <Widget> [
                         new FlatButton(
                           child: new Text("Ok", style: TextStyle(fontFamily:"Guy", fontWeight: FontWeight.bold),),
                           onPressed: () {
                             Navigator.of(context).pop();
                           },
                         ),


                       ],
                     )

                   ],
                 );
               },
             );


           });
         }

       }if(_scorePositivo >=40){


         try{
           var randomx = Random().nextInt(211);
           var randomy = Random().nextInt(211);
           while(randomx < randomy)
             randomy =  Random().nextInt(randomx);
           _x = randomx;
           _y = randomy;

         }catch(IntegerDivisionByZeroException){
           print('Ops.... Corrigindo...');
         }

         if(_scorePositivo == 40){
           showDialog(
             context: context,
             builder: (BuildContext context) {
               return AlertDialog(
                 title: new Text("Parabéns! Você acabou de subir para o nível 6!", style: TextStyle(fontFamily:"Guy",fontWeight: FontWeight.bold),),

                 content: Container(

                   width: 400,
                   height: 250,

                   child: OverflowBox(
                     minWidth:0 ,
                     minHeight:0 ,
                     maxWidth: double.infinity,
                     child: new Image(
                       image: AssetImage("image/congrats.png"),
                       fit: BoxFit.cover,
                     ),


                   ),

                 ),
                 actions: <Widget>[

                   Row(
                     children: <Widget> [
                       new FlatButton(
                         child: new Text("Ok", style: TextStyle(fontFamily:"Guy", fontWeight: FontWeight.bold),),
                         onPressed: () {
                           Navigator.of(context).pop();
                         },
                       ),


                     ],
                   )

                 ],
               );
             },
           );
         }
       }

     });
   }


  //MÉTODO PARA GERAR OPERAÇÃO RANDOMICA
  void _Subtracao(){

    int a = _x;
    int b = _y;
    int result = a - b;

    int respUser = int.parse(_textEditingControllerResposta.text);

    var randomx = Random().nextInt(11);
    var randomy = Random().nextInt(11);



    if( respUser == a - b ){


      print("Certo! "'$a' + " - " + '$b ' + "= " + '$respUser' );

      setState(() {
        _scorePositivo++;
        _scoreAproveitamento =_scorePositivo/(_scorePositivo+_scoreNegativo)*100;
        _textEditingControllerResposta.clear();
        try{
          while(randomx < randomy){
            randomy =  Random().nextInt(randomx);}
          _x = randomx;
          _y = randomy;

        }catch(IntegerDivisionByZeroException){
          print('Ops.... Corrigindo...');
        }

        _nivelDificuldade();

      });

    }else{

      _scoreNegativo++;
      _scoreAproveitamento =_scorePositivo/(_scorePositivo+_scoreNegativo)*100;
      print("Resposta Correta:   " + '$a' + " - " + '$b ' + " = " + '$result');

      setState(() {

        _textEditingControllerResposta.clear();
     });
    }

  }


  @override
  Widget build(BuildContext context) {
    //key: _iniciaTela();
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      // child: SingleChildScrollView  (

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image/fundo_verde.jpg"),
              fit: BoxFit.fill,
            ),
          ),

          margin: EdgeInsets.fromLTRB(0, 0, 0,0),
          child: SingleChildScrollView  (

            padding: EdgeInsets.all(6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [

                Row(

                  children:<Widget>  [
                    Padding(padding: EdgeInsets.fromLTRB(6,50,0,0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget> [
                          Row(
                            children:<Widget> [
                              Padding(padding: EdgeInsets.all(10),
                                child: Row(
                                  children: <Widget> [
                                    Text("Acertos:  ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber, fontFamily: 'Guy'),),
                                    Text("$_scorePositivo", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Guy'),),
                                    Text("             Erros:  ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber, fontFamily: 'Guy'),),
                                    Text("$_scoreNegativo", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Guy'),),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Row(
                            children:<Widget> [
                              Padding(padding: EdgeInsets.all(10),
                                child: Row(
                                  children: <Widget> [

                                  ],
                                ),
                              ),

                            ],
                          ),
                          Row(
                            children:<Widget> [
                              Padding(padding: EdgeInsets.all(10),
                                child: Row(
                                  children: <Widget> [
                                    Text("Aproveitamento:  ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber, fontFamily: 'Guy'),),
                                    Text(_scoreAproveitamento.toStringAsFixed(0) + " %", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Guy'),),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Row(
                            children:<Widget> [
                              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Row(
                                  children: <Widget> [
                                    Text("\nAjuda:   ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber, fontFamily: 'Guy'),),
                                    Text("\n$_contResp", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Guy'),),
                                    Padding(padding: EdgeInsets.only(top: 20),
                                      child: FlatButton(
                                        child:  Image.asset('image/person.png', width: 65,),
                                        onPressed: () {
                                          setState(() {
                                            _exibeGab();
                                          }); },

                                      ),


                                    ),
                                    Padding(padding: EdgeInsets.fromLTRB(85,0,0,0),
                                      child: RaisedButton(
                                        padding: EdgeInsets.all(12),
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Inicial() ),
                                          );

                                          print('Transição de tela funcionando...');
                                        },
                                        color: Colors.amber,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Icon(Icons.home, color: Colors.black,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Padding(padding: EdgeInsets.only(top:100),
                      child: Row(
                        children: <Widget> [
                          Text("$_x", style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold,color: Colors.white, fontFamily: 'Russo'),),
                          Text(" - ", style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold,color: Colors.white, fontFamily: 'Russo'),),
                          Text("$_y", style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold,color: Colors.white, fontFamily: 'Russo'),),
                        ],
                      ),
                    ),


                  ],
                ),

                Padding(padding: EdgeInsets.fromLTRB(10,10,10,0),
                  child: Column(
                    children: <Widget> [
                      TextField(//TEXTFIELD PARA ALTURA
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: ('Resposta'),
                          labelStyle: TextStyle(color:Colors.white, fontFamily: 'Guy'),
                        ),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                            fontFamily: 'Guy'

                        ),
                        controller: _textEditingControllerResposta,

                      ),

                      Padding(padding: EdgeInsets.only(top: 40),
                        child: RaisedButton(

                          child: Text("Responder", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Guy'),),
                          color: Colors.amber,
                          padding: EdgeInsets.all(15),
                          onPressed: _Subtracao,
                        ),
                      ),

                    ],

                  ),

                )


              ],

            ),
          ),


          // ),

        ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,

          child: Icon(Icons.wifi_protected_setup, color: Colors.black),
          onPressed: (){
            _reiniciaOp();


            print('Reiniciando operação');
          }
      ),
    );
  }
}
