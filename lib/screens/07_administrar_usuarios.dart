import 'package:flutter/material.dart';
import 'package:mercado_pago/screens/05_barra_navegacion_inferior.dart';
import 'package:mercado_pago/screens/08_modal_usuarios.dart';


class AdministrarUsuarios extends StatefulWidget {
  const AdministrarUsuarios({super.key});

  @override
  State<AdministrarUsuarios> createState() => _AdministrarUsuariosState();
}

class _AdministrarUsuariosState extends State<AdministrarUsuarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),          
        ),
        title: const Text(
          'Administrar usuarios',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/1535/1535024.png',
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            title: const Text('Usuarios'),
            leading: const Icon(
              Icons.connect_without_contact_rounded
            ),
            trailing: const Icon(
              Icons.arrow_circle_right_outlined
            ),
            onTap: () {
              modalUsuario(context);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            title: const Text('Buscar usuario'),
            leading: const Icon(
              Icons.connect_without_contact_rounded
            ),
            trailing: const Icon(
              Icons.arrow_circle_right_outlined
            ),
            onTap: () {
              
            },
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            title: const Text('Solicitudes'),
            leading: const Icon(
              Icons.connect_without_contact_rounded
            ),
            trailing: const Icon(
              Icons.arrow_circle_right_outlined
            ),
            onTap: () {
              
            },
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            title: const Text('Informes'),
            leading: const Icon(
              Icons.connect_without_contact_rounded
            ),
            trailing: const Icon(
              Icons.arrow_circle_right_outlined
            ),
            onTap: () {
              
            },
          ),
        ],
      ),
      bottomNavigationBar: const BarraNavegacionInferior(),
    );
  }
}
