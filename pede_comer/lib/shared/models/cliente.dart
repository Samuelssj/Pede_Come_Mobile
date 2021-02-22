class Cliente {
  String username;
  String password;
  String email;
  String telefone;
  String cpf;

  Cliente({this.username, this.password, this.email, this.telefone, this.cpf});

  Cliente.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    email = json['email'];
    telefone = json['telefone'];
    cpf = json['cpf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    data['email'] = this.email;
    data['telefone'] = this.telefone;
    data['cpf'] = this.cpf;
    return data;
  }
}