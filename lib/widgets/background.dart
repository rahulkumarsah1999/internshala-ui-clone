import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final  Widget child;
  const Background({super.key,
  required this.child
  });

  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFD8C9FF), Color(0xFFB89CFF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x8569C1FF), Color(0xFF8569C1)],
                ),
              ),
            ),
          ),
          child,
        ],
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
      size.width / 2,
      size.height -200 ,
      size.width,
      size.height -100,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
