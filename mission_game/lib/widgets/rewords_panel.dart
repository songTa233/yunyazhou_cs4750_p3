import 'package:flutter/material.dart';
import 'package:flutter_reward/widgets/app_grid_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewordsPanel extends StatefulWidget {
  final List<String> missionRewords;
  final bool editAble;
  final Function(String)? itemOnTap;

  const RewordsPanel({
    super.key,
    required this.missionRewords,
    this.editAble = false,
    this.itemOnTap
  });

  @override
  State<RewordsPanel> createState() => _RewordsPanelState();
}

class _RewordsPanelState extends State<RewordsPanel> {

  final List<String> rewords = [
    'icon_reword_1',
    'icon_reword_2',
    'icon_reword_3',
    'icon_reword_4',
  ];

  @override
  Widget build(BuildContext context) {
    return AppGridView(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              widget.itemOnTap?.call(rewords[index]);
            },
            child: Container(
              width: 30.r,
              height: 30.r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffb78551),
                  border: widget.missionRewords.contains(rewords[index]) ? Border.all(color: Colors.yellow) : null
              ),
              child: Image.asset(
                'assets/images/${rewords[index]}.webp',
                width: 25,
                height: 25,
              ),
            ),
          );
        },
        crossAxisCount: 4,
        itemCount: rewords.length,
        childAspectRatio: 1,
    );
  }
}
