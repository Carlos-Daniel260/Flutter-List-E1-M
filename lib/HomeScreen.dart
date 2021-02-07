import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_application_1/login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          body: Stack(
        children: [
          HeaderCurvo(),
          Column(
            children: [
              SizedBox(
                height: 100,
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 45.0,
                backgroundColor: Colors.grey[300],
                foregroundColor: Colors.grey,
                backgroundImage: CachedNetworkImageProvider(
                    'https://i.pinimg.com/originals/a1/61/09/a161090ff356ade06c77f4f5c6dd638f.jpg'),
              ),
              SizedBox(
                height: 30,
              ),
              FadeInDown(
                child: Text(
                  '¡Bienvenido!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              FloatingActionButton(
                backgroundColor: Color(0xfff4735e),
                child: Icon(Icons.east_rounded),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              )
            ],
          ),
        ],
      )),
    );
  }
}

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Colors.black,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Color(0xfff4735e);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.lineTo(0, size.height * 0.35);
    //path.lineTo(size.width, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.50, size.height * 0.50, size.width, size.height * 0.35);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
