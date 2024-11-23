import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5A623), // Orange color for the header
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF5A623), Color(0xFFF47B00)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                const Spacer(flex: 2), // Add space at the top
                const CircleAvatar(
                  radius: 70, // Larger size for the logo
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/SUZUKIS.png'),
                  ),
                ),
                const SizedBox(height: 15), // Space between logo and title
                const Text(
                  'Regístrate ahora',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                    fontFamily: 'Roboto-Regular',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  style: const TextStyle(fontFamily: 'Roboto-Regular'),
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    labelStyle: const TextStyle(fontFamily: 'Roboto-Regular'),
                    prefixIcon: const Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  style: const TextStyle(fontFamily: 'Roboto-Regular'),
                  decoration: InputDecoration(
                    labelText: 'Apellido',
                    labelStyle: const TextStyle(fontFamily: 'Roboto-Regular'),
                    prefixIcon: const Icon(Icons.person_outline),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  style: const TextStyle(fontFamily: 'Roboto-Regular'),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(fontFamily: 'Roboto-Regular'),
                    prefixIcon: const Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  style: const TextStyle(fontFamily: 'Roboto-Regular'),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: const TextStyle(fontFamily: 'Roboto-Regular'),
                    prefixIcon: const Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  style: const TextStyle(fontFamily: 'Roboto-Regular'),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirmar Contraseña',
                    labelStyle: const TextStyle(fontFamily: 'Roboto-Regular'),
                    prefixIcon: const Icon(Icons.lock_outline),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3487F5), // Soft blue color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      // Registration logic
                    },
                    icon: const Icon(Icons.arrow_forward, color: Colors.white), // Arrow icon
                    label: const Text(
                      'Registrarme',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Space between buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Red color for the "Salir" button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      // Close the current screen and return to the previous one
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.exit_to_app, color: Colors.white), // Exit icon
                    label: const Text(
                      'Salir',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Spacer(flex: 1), // Add space at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}
