import 'dart:convert';
import 'package:database_oper/users.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  Users users;

  Users get getUsers => users;

 Future  fetchData() async {
    print("object");
    print("object");
    final response = await http.get("http://toobworks.com/flutter/dany.php");

    users =  Users.fromJson(jsonDecode(response.body));
    print(users.users[0].id);
    notifyListeners();
  }

 
}
