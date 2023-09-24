import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanadprojecttest/Elegance/cubit/sreach_cubit.dart';
import 'package:sanadprojecttest/Elegance/orders/cubit/orders_cubit.dart';
import 'package:sanadprojecttest/Elegance/orders/orders.dart';
import 'package:sanadprojecttest/profile/profile.dart';
import 'package:sizer_pro/sizer.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => SearchCubit(),
      ),
      BlocProvider(
        create: (context) => OrdersCubit(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: const Profile(),
      ),
    );
  }
}
