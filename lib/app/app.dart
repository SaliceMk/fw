import 'package:flutter/material.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image/slider_image_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/slider_image1/slider_image1_cubit.dart';
import 'package:foodwifi_trial/menu_manager/logic/thumbnail_image/thumbnail_image_cubit.dart';

import '../router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App();
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThumbnailImageCubit>(
          create: (BuildContext context) => ThumbnailImageCubit(),
        ),
        BlocProvider<SliderImageCubit>(
          create: (BuildContext context) => SliderImageCubit(),
        ),
        BlocProvider<SliderImage1Cubit>(
          create: (BuildContext context) => SliderImage1Cubit(),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        //home: FfMenuEmptyPage(),
      ),
    );
  }
}
