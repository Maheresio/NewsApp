import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';

class CustomListViewHeader extends StatelessWidget {
  const CustomListViewHeader({
    super.key,
    this.onPressed,
    required this.headerText,
  });

  final String headerText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headerText,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
        ),
        const Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            AppStrings.kViewAll,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}
