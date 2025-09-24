import 'package:flutter/material.dart';

class TapFadeImage extends StatefulWidget {
  const TapFadeImage({super.key});

  @override
  State<TapFadeImage> createState() => _TapFadeImageState();
}

class _TapFadeImageState extends State<TapFadeImage> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.5 : 1.0; // Fade to 50% and back
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _toggleOpacity,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 400),
          opacity: _opacity,
          child: Image.asset(
            'assets/images/me.png',
            width: 800,

          ),
        ),
      ),
    );
  }
}
