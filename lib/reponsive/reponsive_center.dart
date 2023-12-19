import 'package:flutter/material.dart';
import 'package:flutter_pratice/reponsive/breakpoint.dart';

class ResponsiveCenter extends StatelessWidget {
  const ResponsiveCenter(
      {super.key,
      this.maxContentWidth = BreakPoint.tablet,
      this.padding = EdgeInsets.zero,
      this.child});

  final double maxContentWidth;
  final EdgeInsetsGeometry padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Center(
      // center widget의 부모는 screen / loose constraints를 가지고 있음
      child: SizedBox(
        width: maxContentWidth,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
