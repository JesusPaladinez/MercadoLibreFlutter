import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future<List<Usuarios>> obtenerUsuarios() async {
  try {
    final response = await http
        .get(Uri.parse('https://api-nodejs-mongodb-2j7b.onrender.com/api/usuario'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      final users = body.map((user) => Usuarios.fromJson(user)).toList();
      print(users);
      return users; 
    } else {
      throw Exception('Error al cargar usuarios: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
    throw Exception('Error al obtener usuarios: $e');
  }
}


Future<Usuarios> crearUsuario(String name, String email, String password) async {
  try {
    final response = await http.post(
      Uri.parse('https://api-nodejs-mongodb-2j7b.onrender.com/api/usuario'),
      headers: <String, String> {
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(
        <String, String> {
          'name': name,
          'email': email,
          'password': password,
        }
      )
    );
    if (response.statusCode == 201 || response.statusCode == 200) {
      return Usuarios.fromJson(
        jsonDecode(
          response.body
        ) as Map<String, dynamic>
      ); 
    } else {
      throw Exception('No ha sido posible registrarse: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
    throw Exception('Error al registrar usuario: $e');
  }
}


class Usuarios {
  final String name;
  final String email;
  final String password;

  const Usuarios({
    required this.name,
    required this.email,
    required this.password,
  });

  factory Usuarios.fromJson(Map<String, dynamic> json) {
    return Usuarios(
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }
}
