import 'package:database_oper/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    var userprovider=Provider.of<UserProvider>(context);
    return Scaffold(
body: FutureBuilder(
  future: userprovider.fetchData(),
  builder: (context, snapshot) {
    return     (userprovider.getUsers==null)?Text("loading"):ListView.builder(
      itemCount: userprovider.getUsers.users.length,
      itemBuilder: (context, index){
        return ListTile(title: Text(userprovider.getUsers.users[index].username),);
      },
    );
  }
),
    );
  }
}