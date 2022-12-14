import 'package:flutter/material.dart';

class CustomContrainedBox extends StatelessWidget {
  final double Function(BoxConstraints constraints)? maxWidth;
  final double Function(BoxConstraints constraints)? maxHeight;
  final double Function(BoxConstraints constraints)? minHeight;
  final double Function(BoxConstraints constraints)? minWidth;

  final EdgeInsetsGeometry? margin;
  final Widget Function(BoxConstraints constraints) builder;

  const CustomContrainedBox({
    super.key,
    this.maxHeight,
    this.minHeight,
    this.maxWidth,
    this.minWidth,
    this.margin,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cMaxHeight = constraints.maxHeight;
          final cMinHeight = constraints.minHeight;
          final cMaxWidth = constraints.maxWidth;
          final cMinWidth = constraints.minWidth;

          return ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight:
                  maxHeight != null ? maxHeight!(constraints) : cMaxHeight,
              minHeight:
                  minHeight != null ? minHeight!(constraints) : cMinHeight,
              maxWidth: maxWidth != null ? maxWidth!(constraints) : cMaxWidth,
              minWidth: minWidth != null ? minWidth!(constraints) : cMinWidth,
            ),
            child: builder(constraints),
          );
        },
      ),
    );
  }
}
