import 'package:flutter/material.dart';
import 'package:mercado_pago/controllers/usuarios_controller.dart';

modalUsuario(BuildContext context) {
  obtenerUsuarios().then((obtenerUsuarios) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Scaffold(
              appBar: AppBar(
                actions: const [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.event),
                  )
                ],
                backgroundColor: Colors.amber[600],
                foregroundColor: Colors.white,
                title: const Text('Usuarios'),
              ),
              body: ListView.builder(
                  itemCount: obtenerUsuarios.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(obtenerUsuarios[index].name),
                      subtitle: Text(obtenerUsuarios[index].email),
                      trailing: const Icon(Icons.delete),
                    );
                  }));
        });
  }).catchError((error) {
    // Manejo de errores
    print('Error: $error');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Error al obtener usuarios: $error'),
    ));
  });
}
