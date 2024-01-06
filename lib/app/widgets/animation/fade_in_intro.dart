import 'package:flutter/material.dart';

class FadeInIntro extends StatefulWidget {
  const FadeInIntro({super.key, required this.child});
  final Widget child;

  @override
  State<FadeInIntro> createState() => _FadeInIntroState();
}

class _FadeInIntroState extends State<FadeInIntro>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      animationBehavior: AnimationBehavior.normal,
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _controller.drive(
        Tween<Offset>(
          begin: const Offset(0, 0.6),
          end: const Offset(0, 0),
        ).chain(
          CurveTween(curve: Curves.easeInOut),
        ),
      ),
      child: FadeTransition(
        opacity: _controller.drive(
          Tween<double>(
            begin: 0.2,
            end: 1,
          ).chain(
            CurveTween(curve: Curves.easeInOut),
          ),
        ),
        // opacity: _controller,
        child: widget.child,
      ),
    );
  }
}
