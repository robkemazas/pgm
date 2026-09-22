import 'package:flutter/material.dart';

const Color pgmAmber = Color(0xEAFFAC1A);
const Color pgmWhiteField = Color(0xCCFFFFFF);

BoxDecoration pgmButtonDecoration({double radius = 10}) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    image: const DecorationImage(
      image: AssetImage('assets/images/brushed_button.png'),
      fit: BoxFit.fill,
    ),
    boxShadow: const [
      BoxShadow(color: Colors.black54, blurRadius: 6, offset: Offset(3, 3)),
    ],
  );
}

BoxDecoration pgmTextFieldDecoration() {
  return BoxDecoration(
    color: pgmWhiteField,
    borderRadius: BorderRadius.circular(6),
    border: Border.all(color: Colors.black, width: 1),
    boxShadow: const [
      BoxShadow(color: Colors.black26, blurRadius: 3, offset: Offset(2, 2)),
    ],
  );
}

BoxDecoration pgmAmberBoxDecoration() {
  return BoxDecoration(
    color: pgmAmber,
    borderRadius: BorderRadius.circular(24),
    border: Border.all(color: Colors.black, width: 4),
    boxShadow: const [
      BoxShadow(color: Colors.black54, blurRadius: 6, offset: Offset(3, 3)),
    ],
  );
}

class PgmButton extends StatelessWidget {
  final String label;
  final double? width;
  final double? height;
  final Color textColor;
  final VoidCallback? onPressed;

  const PgmButton({
    super.key,
    required this.label,
    this.width,
    this.height,
    this.textColor = Colors.black,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? 150,
        height: height ?? 70,
        decoration: pgmButtonDecoration(),
        child: Center(
          child: Text(
            label.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              shadows: const [
                Shadow(
                  color: Color(0xFF03A9F4),
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
              height: 1.1,
            ),
          ),
        ),
      ),
    );
  }
}
