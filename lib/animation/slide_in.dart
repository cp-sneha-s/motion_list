import 'package:flutter/cupertino.dart';


class SlideIn extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  const SlideIn(
      {Key? key, required this.child, required this.animation})
      :super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
          begin: const Offset(-1, 0), end: const Offset(0, 0)).animate(
          animation),
      child: child,
    );
  }
}