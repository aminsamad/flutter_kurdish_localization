import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Image.asset(
        'assets/images/bg.png',
        color: const Color(0x08423C33),
        fit: BoxFit.cover,
        height: size.height,
      ),
    );
  }
}
