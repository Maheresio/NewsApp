import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/helpers/show_alert_dialog.dart';
import 'bookmark_list_view_item.dart';
import 'package:provider/provider.dart';

import '../../core/utils/app_router.dart';
import '../../manager/news_provider.dart';

class BookMarkListView extends StatelessWidget {
  const BookMarkListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, value, _) => ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => InkWell(
          onTap: () => GoRouter.of(context).push(
            AppRouter.kNewsDetailsView,
            extra: value.bookMarkList.elementAt(
              index,
            ),
          ),
          child: BookMarkListViewItem(
            index: index,
          ),
        ),
        itemCount: value.bookMarkList.length,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => SizedBox(
          height: 12.h,
        ),
      ),
    );
  }
}
