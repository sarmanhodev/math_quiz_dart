import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matematica/Tela_Inicial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class Tela_Sobre extends StatefulWidget {
  const Tela_Sobre({Key? key}) : super(key: key);

  @override
  _Tela_SobreState createState() => _Tela_SobreState();
}

class _Tela_SobreState extends State<Tela_Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(


        child: SelectableText.rich(

          TextSpan(
              children: <TextSpan>[

                TextSpan(text: "\n"
          "\n"

          "  O  MATH QUIZ  é um app voltado para o público infantojuvenil, onde poderão exercitar a mente com as operações matemáticas. \n"
          " Na tela inicial, o usuário deverá escolher qual operação \n"
          " irá querer jogar.\n \nCada tela de operação matemática é composta por um botão de reiniciar, campo para acertos e erros, um botão para retornar ao menu inicial e um botão para pedir ajuda.\n"
          "\n Para cada acerto, será somado um ponto. Conforme o jogador vai acertando, o nível de dificuldade vai aumentando. \n"
          "\n Para cada resposta errada, será somado um ponto no campo Erros. O botão de ajuda irá disponibilizar até  04(quatro) tentativas de ajuda.  \n"
            "\n A cada 15 acertos, o jogador irá ganhar uma ajuda extra!\n"
            " Ao apertar o botão de reset, toda tela será reiniciada: placares,  ajudas e operação matemática.\n"
            "\n Devido a pandemia do corona vírus, muitas instituições de ensino adotaram o método de aprendizagem online, englobando trabalhos e provas, no mesmo modelo. \n"
            " Nos momentos vagos, o público alvo poderá exercitar a mente usando o MATH QUIZ.\n"
            ),

              ],

          ),
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.left,
          toolbarOptions: ToolbarOptions(copy: true, selectAll: true,cut: true,),
          showCursor: true,
          cursorWidth: 2,
          cursorColor: Colors.black,
          cursorRadius: Radius.circular(5),



        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,

          child: Icon(Icons.home, color: Colors.black,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Inicial() ),
            );

            print('Reiniciando operação');
          }
      ),
    );
  }
}
