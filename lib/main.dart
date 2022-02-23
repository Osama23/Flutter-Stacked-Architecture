import 'package:flutter/material.dart';
import 'package:flutter_stacked_unit_testing/app/locator.dart';
import 'package:flutter_stacked_unit_testing/app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async{
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      //home: HomeView(),
    );
  }
}
