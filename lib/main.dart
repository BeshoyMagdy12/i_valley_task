import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:i_valley_task/featers/bottom_nava_bar/presentation/view/home_bottom_nava_bar.dart';
import 'package:sizer/sizer.dart';

import 'core/utilites/dio_healper.dart';
import 'featers/bottom_nava_bar/presentation/view_model/provider.dart';
import 'featers/home_body/presentation/view_model/provider.dart';
import 'generated/l10n.dart';

void main(List<String> args) {
  DioHealper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HomeBttomNavgitionBarProvider(),
          ),
          ChangeNotifierProvider(
            create: (contex) => HomeBodyProvider()          ),
        ],
        child:  MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.indigo)
          ),



          debugShowCheckedModeBanner: false,
          locale: Locale('ar'),
          // supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: [
            S.delegate,
            // GlobalMaterialLocalizations.delegate,
            // GlobalCupertinoLocalizations.delegate,
            // GlobalWidgetsLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
          ],
          home: HomeBttomNavgitionBar(),
        ),
      ),
    );
  }
}
