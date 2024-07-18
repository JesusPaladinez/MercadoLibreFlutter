import 'package:flutter/material.dart';

class FormularioRegistro extends StatefulWidget {
  const FormularioRegistro({super.key});

  @override
  State<FormularioRegistro> createState() => _FormularioRegistroState();
}

class _FormularioRegistroState extends State<FormularioRegistro> {
  // Permite identificar de forma única el formulario
  final _formKey = GlobalKey<FormState>();
  String txtNombres = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Permite utiizar una región de desplazamiento que puede tener un solo widget
      body: Center(
        child: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/128/758/758669.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 10),
              const Text(
                'Registrarse',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Nombre',
                    prefixIcon: const Icon(Icons.person_3_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese el nombre';
                  }
                  return null;
                },
                onSaved: (value) {
                  txtNombres = value!;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Contraseña',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Confirmar contraseña',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {                      
                      _formKey.currentState!.save(); // Guardar el formulario si es válido
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Registro exitoso'),
                        )
                      );
                      Navigator.pushNamed(context, '/perfil');
                    }
                  },                  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Registrarse'),
                )
              ),
              Row(
                children: [
                  const Text('Ya tienes una cuenta?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/inicioSesion');
                    },
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
