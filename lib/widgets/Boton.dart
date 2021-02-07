import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/UserPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Boton extends StatelessWidget {
  @required
  final String texto;
  final Color color1;
  final Color color2;

  const Boton(
      {this.texto, this.color1 = Colors.grey, this.color2 = Colors.blueGrey});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserPage(
                username: this.texto,
              ),
            ));
      },
      child: Stack(
        children: <Widget>[
          _BotonBackground(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 140,
                width: 40,
              ),
              FaIcon(
                FontAwesomeIcons.user,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  this.texto,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              FaIcon(FontAwesomeIcons.chevronRight, color: Colors.white),
              SizedBox(
                width: 40,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _BotonBackground extends StatelessWidget {
  final Color color1;
  final Color color2;

  const _BotonBackground({this.color1, this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(4, 6),
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: <Color>[
              //this.color1,
              //this.color2
              Color(0xfff4735e),
              Color.fromRGBO(240, 94, 100, 1.0)
            ],
          )),
    );
  }
}
