import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileWidget extends StatelessWidget {
  final Widget? title;
  final Widget? subtitle;

  const ListTileWidget({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: EdgeInsets.only(bottom: 15.r, top: 5.r),
        child: title,
      ),
      subtitle: subtitle,
      style: ListTileTheme.of(context).style,
    );
  }
}
