import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Publicacion()),
  );
}

class Publicacion extends StatefulWidget {
  const Publicacion({super.key});

  @override
  State<Publicacion> createState() => _PublicacionState();
}

class _PublicacionState extends State<Publicacion> {
  bool marcado = true;
  int meGusta = 12;

  void cambiarMeGusta() {
    setState(() {
      marcado = !marcado;
      meGusta += marcado ? 1 : -1;
    });
  }

  void reiniciar() {
    setState(() {
      marcado = false;
      meGusta = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const fondo = Color(0xFFFFF8F8);

    return Scaffold(
      backgroundColor: fondo,
      appBar: AppBar(backgroundColor: fondo, title: const Text('Publicación')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Container(
              height: 210,
              width: double.infinity,
              color: const Color(0xFFFBE4EC),
              child: const Center(
                child: Icon(Icons.image, size: 100, color: Color(0xFFF18CAD)),
              ),
            ),
            const SizedBox(height: 24),
            BotonMeGusta(marcado: marcado, alPulsar: cambiarMeGusta),
            const SizedBox(height: 8),
            TextoMeGusta(cantidad: meGusta),
            const SizedBox(height: 20),
            BotonReiniciar(alPulsar: reiniciar),
          ],
        ),
      ),
    );
  }
}

class BotonMeGusta extends StatelessWidget {
  const BotonMeGusta({
    super.key,
    required this.marcado,
    required this.alPulsar,
  });

  final bool marcado;
  final VoidCallback alPulsar;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: alPulsar,
          icon: Icon(marcado ? Icons.favorite : Icons.favorite_border),
          color: const Color(0xFFEC2B70),
          iconSize: 32,
          tooltip: 'Me gusta',
        ),
        const Text('Me gusta', style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class TextoMeGusta extends StatelessWidget {
  const TextoMeGusta({super.key, required this.cantidad});

  final int cantidad;

  @override
  Widget build(BuildContext context) {
    return Text(
      'A $cantidad personas les gusta esto',
      style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
    );
  }
}

class BotonReiniciar extends StatelessWidget {
  const BotonReiniciar({super.key, required this.alPulsar});

  final VoidCallback alPulsar;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: alPulsar, child: const Text('Reiniciar'));
  }
}
