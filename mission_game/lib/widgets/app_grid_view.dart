import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppGridView extends StatelessWidget {
  final String? title;
  final NullableIndexedWidgetBuilder itemBuilder;
  final int crossAxisCount;
  final double? crossAxisSpacing;
  final double? mainAxisSpacing;
  final double? childAspectRatio;
  final int itemCount;
  final Function? itemOnTap;
  final ScrollPhysics? physics;

  const AppGridView({
    super.key,
    this.title,
    this.crossAxisSpacing,
    this.mainAxisSpacing,
    this.childAspectRatio,
    this.itemOnTap,
    required this.itemBuilder,
    required this.crossAxisCount,
    required this.itemCount,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: physics ?? const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing ?? 8,
        mainAxisSpacing: mainAxisSpacing ?? 8,
        childAspectRatio: childAspectRatio ?? 0.6,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            itemOnTap?.call();
          },
          child: itemBuilder(context, index),
        );
      },
    );
  }
}