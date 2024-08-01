import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Usuarios {
  final String _id;
  final String name;
  final String email;
  final String password;

  const Usuarios({
    required String id,
    required this.name,
    required this.email,
    required this.password,
  }) : _id = id;

  factory Usuarios.fromJson(Map<String, dynamic> json) {
    return Usuarios(
      id: json['_id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }

  // Método para obtener el id
  String get id => _id;

  // Método para limpiar los objetos
  Usuarios.empty()
      : _id = '',
        name = '',
        email = '',
        password = '';
}


Future<List<Usuarios>> obtenerUsuarios() async {
  try {
    final response = await http.get(
        Uri.parse('https://api-nodejs-mongodb-2j7b.onrender.com/api/usuario'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      final users = body.map((user) => Usuarios.fromJson(user)).toList();
      return users;
    } else {
      throw Exception('Error al cargar usuarios: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error al obtener usuarios: $e');
  }
}


Future<Usuarios> crearUsuario(
    String name, String email, String password) async {
  try {
    final response = await http.post(
        Uri.parse('https://api-nodejs-mongodb-2j7b.onrender.com/api/usuario'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, String>{
          'name': name,
          'email': email,
          'password': password,
        }));
    if (response.statusCode == 201 || response.statusCode == 200) {
      return Usuarios.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('No ha sido posible registrarse: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error al registrar usuario: $e');
  }
}


Future<Usuarios> actualizarUsuario(String id, String name, String email, String password) async {
  try {
    final response = await http.put(
        Uri.parse('https://api-nodejs-mongodb-2j7b.onrender.com/api/usuario/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, String>{  
          'name': name,
          'email': email,
          'password': password,
        }));
    if (response.statusCode == 201 || response.statusCode == 200) {
      return Usuarios.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('No ha sido posible actualizar al usuario: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error al actualizar al usuario: $e');
  }
}


Future<Usuarios> eliminarUsuario(String id) async {
  final response = await http.delete(
    Uri.parse('https://api-nodejs-mongodb-2j7b.onrender.com/api/usuario/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    return Usuarios.empty();
  } else {
    throw Exception('Error al eliminar el usuario.');
  }
}
