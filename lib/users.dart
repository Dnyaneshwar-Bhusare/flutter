
class Users {
    String status;
    String message;
    List<User> users;

    Users({
        this.status,
        this.message,
        this.users,
    });

    factory Users.fromJson(Map<String, dynamic> json) => new Users(
        status: json["status"],
        message: json["message"],
        users: new List<User>.from(json["users"].map((x) => User.fromJson(x))),
    );


}

class User {
    String id;
    String username;

    User({
        this.id,
        this.username,
    });

    factory User.fromJson(Map<String, dynamic> json) => new User(
        id: json["id"],
        username: json["username"],
    );

}
