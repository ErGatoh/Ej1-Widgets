import 'package:flutter/material.dart';

void main() => runApp(const Ejercicio2App());

class Ejercicio2App extends StatelessWidget {
  const Ejercicio2App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaEjercicio2(),
    );
  }
}

class PantallaEjercicio2 extends StatelessWidget {
  const PantallaEjercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('¿Con estado o sin estado?')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TarjetaContacto(nombre: 'Lucía Pérez'),
              SizedBox(height: 32),
              ContadorAgua(),
            ],
          ),
        ),
      ),
    );
  }
}

class TarjetaContacto extends StatelessWidget {
  const TarjetaContacto({super.key, required this.nombre});

  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xFFE8F5F1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.person, size: 40),
          const SizedBox(height: 8),
          const Text('Tarjeta de contacto (sin estado)'),
          Text(nombre, style: const TextStyle(fontSize: 22)),
        ],
      ),
    );
  }
}

class ContadorAgua extends StatefulWidget {
  const ContadorAgua({super.key});

  @override
  State<ContadorAgua> createState() => _ContadorAguaState();
}

class _ContadorAguaState extends State<ContadorAgua> {
  int vasos = 0;

  void sumarVaso() {
    setState(() {
      vasos++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Contador de agua (con estado)'),
        const SizedBox(height: 8),
        Text('Vasos de agua: $vasos', style: const TextStyle(fontSize: 22)),
        const SizedBox(height: 12),
        ElevatedButton(onPressed: sumarVaso, child: const Text('Añadir vaso')),
      ],
    );
  }
}
