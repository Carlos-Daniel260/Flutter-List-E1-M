import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Boton.dart';

class NombresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0),
        centerTitle: true,
        title: Text(
          'Nombres',
        ),
      ),
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Carlos',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Daniel',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Julio',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Cesar',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Juan',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Antonio',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Fernando',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Luis',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Raul',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Alberto',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Eduardo',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Pedro',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Gerardo',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Hugo',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Sandra',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Karen',
                ),
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 250),
                child: Boton(
                  texto: 'Elias',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
