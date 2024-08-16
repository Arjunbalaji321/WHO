import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formhospi/rubella/bloc/rubella_bloc.dart';
import 'package:formhospi/rubella/view/rubella.dart';
import 'package:formhospi/typhoid/bloc/typhoid_bloc.dart';
// ignore: unused_import
import 'package:formhospi/typhoid/view/typoid.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TyphoidBloc()),
        BlocProvider(
            create: (_) => RubellaBloc()), // Add other blocs if necessary
      ],
      child: MyApp(), // This should be your main widget
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Rubella(), // Set the home page of your app
      routes: {
        '/typhoid': (context) => Rubella(), // Ensure TyphoidPage is correct
      },
    );
  }
}
