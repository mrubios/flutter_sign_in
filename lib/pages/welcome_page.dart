import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
    required this.formulario,
  });

  final Map<String, String> formulario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenido"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Correo electrónico: "),
            const SizedBox(
              height: 30,
            ),
            Text(formulario['email'] ?? "Sin nombre",
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            const Text("Contraseña: ",),
            const SizedBox(
              height: 30,
            ),
            Text(formulario['password'] ?? "Sin nombre",
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
