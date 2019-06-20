import 'package:database_oper/user_provider.dart';

import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Listview()
      ),
    );
  }
}

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          return (snapshot.data == null)
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: snapshot.data.users.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data.users[index].username),
                    );
                  },
                );
        });
  }
}
