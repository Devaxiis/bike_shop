import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;

  const MyButton({super.key, required this.text});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isPressed = !_isPressed;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
        decoration: ShapeDecoration(
          gradient: _isPressed
              ? const LinearGradient(
                  begin: Alignment(0.46, -0.89),
                  end: Alignment(-0.46, 0.89),
                  colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
                )
              : const LinearGradient(
                  begin: Alignment(0.17, -0.98),
                  end: Alignment(-0.17, 0.98),
                  colors: [Color(0xFF353F53), Color(0xFF212734)],
                ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }
}

/// #
class CategoriesWidget extends StatefulWidget {
  final Widget icon;

  const CategoriesWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isPressed = !isPressed;
        setState(() {});
      },
      child: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: ShapeDecoration(
          gradient: isPressed == true
              ? const LinearGradient(
                  begin: Alignment(0.46, -0.89),
                  end: Alignment(-0.46, 0.89),
                  colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
                )
              : const LinearGradient(
                  begin: Alignment(0.17, -0.98),
                  end: Alignment(-0.17, 0.98),
                  colors: [Color(0xFF353F53), Color(0xFF212734)],
                ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: widget.icon,
      ),
    );
  }
}
