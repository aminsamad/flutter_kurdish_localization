import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, this.child, this.margin, this.padding, this.alignment})
      : super(key: key);
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      width: double.infinity,
      margin: margin ?? const EdgeInsets.all(10),
      padding: padding ??
          const EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white70,
          border:
              Border.all(color: Colors.grey[300]!, style: BorderStyle.solid)),
      child: child,
    );
  }
}
