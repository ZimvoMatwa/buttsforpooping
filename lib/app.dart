import 'package:blockbucks/router.gr.dart';
import 'package:blockbucks/service_locator.dart';
import 'package:flutter/material.dart';

class BlocBucks extends StatefulWidget {
  const BlocBucks({super.key});

  @override
  State<BlocBucks> createState() => _BlocBucksState();
}

class _BlocBucksState extends State<BlocBucks> {
  final appRouter = serviceLocator<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(initialRoutes: [const HomeRoute()]),
    );
    // return FutureBuilder<AccountSettings?>(
    //   future: accountSettings,
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const CircularProgressIndicator();
    //     }
    //     debugPrint('luigi token ${snapshot.data?.token}');
    //     return MaterialApp.router(
    //       // theme: lightMode(Theme.of(context).textTheme),
    //       themeMode: ThemeMode.light,
    //       // localizationsDelegates: const [
    //       // AppLocalizations.delegate,
    //       //       GlobalMaterialLocalizations.delegate,
    //       //       GlobalWidgetsLocalizations.delegate,
    //       //       GlobalCupertinoLocalizations.delegate,
    //       // ],
    //       supportedLocales: const [Locale('en')],
    //       debugShowCheckedModeBanner: false,
    //       routeInformationParser: appRouter.defaultRouteParser(),
    //       routerDelegate: appRouter
    //           .delegate(initialRoutes: [getAccountInitialRoute(snapshot)]),
    //     );
    //   },
    // );
  }
}
