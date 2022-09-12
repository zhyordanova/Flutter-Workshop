import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mountain_trips/cubit/app_cubit_logics.dart';
import 'package:mountain_trips/cubit/app_cubits.dart';
import 'package:mountain_trips/pages/detail_page.dart';
import 'package:mountain_trips/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: ((context) => AppCubits(
         DataServices(),
        )),
        child: AppCubitLogics(),
      ),
    );
  }
}
