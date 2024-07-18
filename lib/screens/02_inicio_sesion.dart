import 'package:flutter/material.dart';


class InicioSesion extends StatelessWidget {
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/758/758669.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Text(
                  'Bienvenido a Mercado Libre Col',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Text(
                  'Inicie sesión para continuar',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo eléctronico',
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Iniciar sesión'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      
                    },
                    icon: Image.network(
                      'https://brandemia.org/sites/default/files/sites/default/files/google_icono_despues.jpg',
                      height: 41,
                      width: 41,
                    ),
                    label: const Text('Ingresa con Google'),  
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      
                    },
                    icon: Image.network(
                      'https://img.freepik.com/vector-premium/icono-logotipo-circulo-facebook-aplicacion-redes-sociales-aplicacion-red-marca-editorial-popular-ilustracion-vectorial_913857-373.jpg',
                      height: 41,
                      width: 41,
                    ),
                    label: const Text('Ingresa con Facebook'),  
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text(
                    'Olvidó su contraseña',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registro');
                  },
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}