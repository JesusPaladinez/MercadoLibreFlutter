import 'package:flutter/material.dart';
import 'screens/01_menu_principal.dart';
import 'screens/02_inicio_sesion.dart';
import 'screens/03_registro_usuario.dart';
import 'screens/04_perfil_usuario.dart';
import 'screens/compras.dart';


void main() {
  runApp(const MercadoLibre());
}

class MercadoLibre extends StatelessWidget {
  const MercadoLibre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuPrincipal(),
        '/inicioSesion': (context) => const InicioSesion(),
        '/registro': (context) => const FormularioRegistro(),
        '/perfil': (context) => const PerfilUsuario(),
        '/compras': (context) => const Compras(),
      },
    );
  }
}

