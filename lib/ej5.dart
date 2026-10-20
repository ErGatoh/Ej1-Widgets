// import 'dart:math' as math; // Se usaba solo para la prueba del borde rayado.

import 'package:flutter/material.dart';

void main() => runApp(const Ejercicio5App());

class Ejercicio5App extends StatelessWidget {
  const Ejercicio5App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaPresentacion(),
    );
  }
}

class PantallaPresentacion extends StatelessWidget {
  const PantallaPresentacion({super.key});

  @override
  Widget build(BuildContext context) {
    const azul = Color(0xFF6F8AC9);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F9FD),
        title: const Text(
          'Mi Aplicación',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Prueba del reborde rayado: se hizo, pero visualmente quedaba mal.
                /*
                CustomPaint(
                  painter: BordeRayado(),
                  child: Container(
                    width: 144,
                    height: 144,
                    padding: const EdgeInsets.all(12),
                    child: const CircleAvatar(
                      backgroundColor: azul,
                      child: Icon(Icons.person, size: 78, color: Colors.white),
                    ),
                  ),
                ),
                */
                Container(
                  width: 144,
                  height: 144,
                  padding: const EdgeInsets.all(12),
                  child: const CircleAvatar(
                    backgroundColor: azul,
                    child: Icon(Icons.person, size: 78, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 8,
                  ),
                  color: azul,
                  child: const Text(
                    'Jorge Fernández',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Estudiante de DAM',
                  style: TextStyle(fontSize: 16, color: Color(0xFF616976)),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Expanded(child: TarjetaDato(texto: 'Fixed Bugs: 400')),
                    SizedBox(width: 8),
                    Expanded(child: TarjetaDato(texto: 'Ramas Mergeadas: 300')),
                    SizedBox(width: 8),
                    Expanded(child: TarjetaDato(texto: 'Fallos Tontos: 32M')),
                  ],
                ),
                const SizedBox(height: 30),
                const BotonSeguir(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* Prueba del reborde rayado conservada como referencia.
class BordeRayado extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pintura = Paint()
      ..color = const Color(0xFF4663A4)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;
    final radio = math.min(size.width, size.height) / 2 - 3;
    final circulo = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: radio,
    );

    for (var i = 0; i < 24; i++) {
      canvas.drawArc(circulo, i * 2 * math.pi / 24, 0.14, false, pintura);
    }
  }

  @override
  bool shouldRepaint(covariant BordeRayado oldDelegate) => false;
}
*/

class TarjetaDato extends StatelessWidget {
  const TarjetaDato({super.key, required this.texto});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94,
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFCED7EA)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}

class BotonSeguir extends StatefulWidget {
  const BotonSeguir({super.key});

  @override
  State<BotonSeguir> createState() => _BotonSeguirState();
}

class _BotonSeguirState extends State<BotonSeguir> {
  bool siguiendo = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          siguiendo = !siguiendo;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: siguiendo
            ? const Color(0xFF405DAB)
            : const Color(0xFF6F8AC9),
        foregroundColor: Colors.white,
        minimumSize: const Size(156, 48),
      ),
      child: Text(siguiendo ? 'Siguiendo' : 'Seguir'),
    );
  }
}
