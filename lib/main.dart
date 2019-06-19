
import 'package:database_oper/screen1.dart';
import 'package:database_oper/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        
          primarySwatch: Colors.blue,
        ),
        home:Screen1()
      ), providers:[
        ChangeNotifierProvider(builder: (_)=>UserProvider())
      ],
    );
  }
}

