import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future<List<Usuarios>> usuariosController() async {
  final response = await http.get(Uri.parse('https://api-nodejs-mongodb-2j7b.onrender.com/api/usuario'));

  if (response.statusCode == 200) {
    List<dynamic> jsonList = jsonDecode(response.body);
    return jsonList.map((json) => Usuarios.fromJson(json)).toList();
  } else {
    throw Exception('Falla al cargar los Usuarios');
  }
}

class Usuarios {
  final String nombre;
  final String correoElectronico;

  const Usuarios({
    required this.nombre,
    required this.correoElectronico,
  });

  factory Usuarios.fromJson(Map<String, dynamic> json) {
    return Usuarios (
      nombre: json['nombre'],
      correoElectronico: json['correoElectronico'],
    );
  }
}
