import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
 final  Widget mobile;
 final Widget desktop;
 const ResponsiveLayout({required this.mobile, required this.desktop, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < 768) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: mobile,
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: desktop,
        );
      }
    }));
  }
}
