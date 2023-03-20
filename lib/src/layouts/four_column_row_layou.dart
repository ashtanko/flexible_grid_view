import 'package:flutter/material.dart';

@protected
class FourColumnRowLayout extends StatelessWidget {
  final List<Widget> children;
  final double crossAxisSpacing;
  const FourColumnRowLayout({
    Key? key,
    required this.crossAxisSpacing,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: children[0],
        ),
        SizedBox(width: crossAxisSpacing),
        Flexible(
          flex: 1,
          child: children.length < 2 ? const SizedBox.shrink() : children[1],
        ),
        SizedBox(width: crossAxisSpacing),
        Flexible(
          flex: 1,
          child: children.length < 3 ? const SizedBox.shrink() : children[2],
        ),
        SizedBox(width: crossAxisSpacing),
        Flexible(
          flex: 1,
          child: children.length < 4 ? const SizedBox.shrink() : children[3],
        ),
      ],
    );
  }
}
