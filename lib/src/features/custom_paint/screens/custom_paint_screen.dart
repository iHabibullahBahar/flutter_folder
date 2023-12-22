import 'package:flutter/material.dart';
import 'package:flutterfolder/src/constants/styles.dart';

class CustomPaintScreen extends StatefulWidget {
  const CustomPaintScreen({super.key});

  @override
  State<CustomPaintScreen> createState() => _CustomPaintScreenState();
}

bool isOpen = true;

class _CustomPaintScreenState extends State<CustomPaintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Container(
            height: 250,
            child: CustomPaint(
              painter: isOpen ? MyPainter() : MyPainter1(),
              child: Container(
                height: 50,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isOpen = !isOpen;
                      });
                    },
                    style: zCustomButtonStyle(6),
                    child: Text("Click me"))),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RotatedBox(
              quarterTurns: 3,
              child: ClipPath(
                clipper: DolDurmaClipper(right: 50, holeRadius: 20),
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double center = (size / 2).width;
    var paint = Paint()..color = Colors.blue;
    canvas.drawArc(
        Rect.fromCenter(
          center: Offset(center, center),
          width: 200,
          height: 200,
        ),
        0.5,
        (3.14 * 2 - 1),
        true,
        paint);
    canvas.drawCircle(Offset(center, 130), 15, Paint()..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double center = (size / 2).width;
    var paint = Paint()..color = Colors.blue;
    canvas.drawArc(
        Rect.fromCenter(
          center: Offset(center, center),
          width: 200,
          height: 200,
        ),
        0,
        3.14 * 2 + 1,
        true,
        paint);
    canvas.drawCircle(Offset(center, 130), 15, Paint()..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class DolDurmaClipper extends CustomClipper<Path> {
  DolDurmaClipper({required this.right, required this.holeRadius});

  final double right;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - right - holeRadius, 0.0)
      ..arcToPoint(
        Offset(size.width - right, 0),
        clockwise: false,
        radius: Radius.circular(1),
      )
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - right, size.height)
      ..arcToPoint(
        Offset(size.width - right - holeRadius, size.height),
        clockwise: false,
        radius: Radius.circular(1),
      );

    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}
