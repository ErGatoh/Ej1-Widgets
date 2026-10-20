import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = const bool.fromEnvironment('DEBUG_PAINT');
  runApp(const Ejercicio1App()); 
}

class Ejercicio1App extends StatelessWidget {
  const Ejercicio1App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaPerfil(),
    );
  }
}

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FAF8),
      appBar: AppBar(
        title: const Text('Mi perfil'),
        backgroundColor: const Color(0xFFF4FAF8),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 38,
              backgroundColor: Color(0xFFB6E1DC),
              child: Icon(Icons.person, size: 48, color: Color(0xFF172B2B)),
            ),
            const SizedBox(height: 12),
            const Text(
              'Lucía Pérez',
              style: TextStyle(fontSize: 27 , fontWeight: FontWeight.bold),
            ),
            const Text('Estudiante de 2.º DAM'),
            const SizedBox(height: 24),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                DatoPerfil(valor: '12', etiqueta: 'Proyectos'),
                DatoPerfil(valor: '340', etiqueta: 'Seguidores'),
                DatoPerfil(valor: '58', etiqueta: 'Siguiendo'),
              ],
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person_add, size: 18, color: Color(0xFF006A60)),
                  SizedBox(width: 6),
                  Text('Seguir', style: TextStyle(color: Color(0xFF006A60))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DatoPerfil extends StatelessWidget {
  const DatoPerfil({super.key, required this.valor, required this.etiqueta});

  final String valor;
  final String etiqueta;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            valor,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF172B2B)),
          ),
          Text(etiqueta),
        ],
      ),
    );
  }
}
