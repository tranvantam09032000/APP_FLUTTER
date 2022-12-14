import 'package:app_flutter/cubit/app_cubit.dart';
import 'package:app_flutter/cubit/app_cubit_states.dart';
import 'package:app_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AppCubits, CubitStates>(
      builder: (context, state) {
        if (state is WelComeState) {
          return WelcomePage();
        } else if (state is LoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }else if (state is LoadedState) {
          return HomePage();
        } else {
          return Container();
        }
      },
    ));
  }
}
