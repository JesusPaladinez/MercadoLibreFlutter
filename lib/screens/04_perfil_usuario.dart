import 'package:flutter/material.dart';
import 'package:mercado_pago/screens/08_modal_usuarios.dart';
import '05_barra_navegacion_inferior.dart';


class PerfilUsuario extends StatelessWidget {
  const PerfilUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Perfil',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/86/3b/49/863b4903acd1e05dd950a10e9501a651.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Mario Benedetti',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.person_2_outlined,
                        color: Colors.blue,
                      ),
                      title: const Text('Genero'),
                      trailing: const Text('Masculino'),
                      onTap: () {
                        
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.cake,
                        color: Colors.blue,
                      ),
                      title: const Text('Cumpleaños'),
                      trailing: const Text('12-2-2000'),
                      onTap: () {
                        
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      title: const Text('Número de teléfono'),
                      trailing: const Text('310 2345678'),
                      onTap: () {
                        
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      title: const Text('Cambiar contraseña'),
                      onTap: () {
                        
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.supervisor_account_rounded,
                        color: Colors.blue,
                      ),
                      title: const Text('Administrar usuarios'),
                      trailing: const Icon(
                        Icons.arrow_forward_ios
                      ),
                      onTap: () {
                        modalUsuario(context);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BarraNavegacionInferior(),
    );
  }
}
