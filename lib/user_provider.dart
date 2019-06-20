import 'dart:convert';
import 'package:database_oper/users.dart';
import 'package:http/http.dart' as http;


Future  fetchData() async {
   
    final response = await http.get("http://toobworks.com/flutter/dany.php");

    return  Users.fromJson(jsonDecode(response.body));
   
  }
