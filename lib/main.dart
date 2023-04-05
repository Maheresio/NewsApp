import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/manager/news_provider.dart';
import 'package:provider/provider.dart';
// ignore: depend_on_referenced_packages
import 'package:wakelock/wakelock.dart';

import 'core/helpers/custom_status_bar.dart';
import 'core/utils/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  customStatusBar();
  Wakelock.enable();

  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return ChangeNotifierProvider(
              create: (context) => NewsProvider(),
              child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: ThemeData.light().copyWith(
                  textTheme: GoogleFonts.dmSansTextTheme(),
                ),
                routerConfig: AppRouter.router,
              ));
        }),
  );
}
