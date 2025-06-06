import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/custom_home_app_bar_icon.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          customHomeAppBarIcon(
            icon: FontAwesomeIcons.bars,
            onPressed: null,
            heroTag: 'btn1',
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsetsDirectional.only(end: 8.w),
            child: customHomeAppBarIcon(
              icon: FontAwesomeIcons.magnifyingGlass,
              onPressed: null,
              heroTag: 'btn2',
            ),
          ),
          customHomeAppBarIcon(
            icon: FontAwesomeIcons.bell,
            onPressed: null,
            isNotified: true,
            heroTag: 'btn3',
          ),
        ],
      ),
    );
  }
}
