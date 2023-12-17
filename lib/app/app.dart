import 'package:bloc2/cubit/intranet_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/intarnet_bloc.dart';
import '../ui/connected/conected.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //يسمح انو نستخدمة لأي ويدجت في التطبيق
      // create: (context) => IntarnetBloc(),
      create: (context) => IntranetCubitCubit()..checkConnection(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: Connected()),
    );
  }
}
