import 'package:flutter/material.dart';
import 'package:mercado_pago/controllers/usuarios_controller.dart';

modalUsuario(BuildContext context) {
  // final controladorUsuarios = usuariosController();

  usuariosController().then((usuariosController) {
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
              backgroundColor: Colors.red[100],
              title: const Text('Usuarios'),
            ),
            body: ListView.builder(
              itemCount: usuariosController.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    usuariosController[index]
                  ),
                );
              }
            )
          );
        });
  });
}
