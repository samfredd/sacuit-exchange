import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.color = Colors.transparent,
    this.outlined = false,
    this.textColor = Colors.white,
    this.width,
  });

  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color color;
  final bool outlined;
  final Color textColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: outlined
          ? OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(color: color),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildChildren(),
              ),
            )
          : GestureDetector(
              onTap: onPressed,
              child: Container(
                height: 60,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey.withOpacity(0.2), // Slightly opaque base
                  boxShadow: [
                    // Optional for added depth
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    )
                  ],
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.5), // Semi-transparent white
                      Colors.transparent, // Transparent end
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildChildren(),
                ),
              ),
            ),
    );
  }

  List<Widget> _buildChildren() {
    List<Widget> children = [];
    if (icon != null) {
      children.add(Icon(icon, color: textColor));
      children.add(const SizedBox(width: 10.0));
    }
    children.add(
      Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: outlined ? Colors.grey : textColor,
        ),
      ),
    );
    return children;
  }
}
