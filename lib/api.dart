import 'dart:convert';

import 'package:database_oper/users.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
Future getuser() async {
var response=await http.get("http://toobworks.com/flutter/dany.php");

return compute(parsing,response.body);

}
parsing(String response){

return User.fromJson(jsonDecode(response));

}