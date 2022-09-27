
import 'package:app_flutter/cubit/app_cubit.dart';
import 'package:app_flutter/services/data_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/app_cubit_logics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter travel",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider<AppCubits>(
        create: (context)=>AppCubits(data: DataServices()),
        child: AppCubitLogics(),
      ),
    );
  }
}
