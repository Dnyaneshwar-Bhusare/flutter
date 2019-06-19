import 'package:database_oper/api.dart';
import 'package:database_oper/users.dart';

import 'package:flutter/foundation.dart';
class UserProvider extends ChangeNotifier{
  Users users;

  Users get getUsers=>users;

  fetchData()
  async {
    
    users=await getuser();
    notifyListeners();
    
  }

}