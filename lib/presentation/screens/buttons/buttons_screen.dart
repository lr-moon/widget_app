import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            const EdgeInsets.symmetric //Aplica espacio en los lados contrarios (ejempplo, espacio de derecha a izquierda)
            (horizontal: 10, vertical: 20),
        //Wrap, Cuando ya no hay espacio, se salta a la siguiente linea
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 17,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Boton elevado con sombra'),
            ),

            ElevatedButton(onPressed: null, child: Text('Boton deshabilitado')),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_box_outlined),
              label: const Text('Elevated icon'),
            ),

            // 1. Botón con colores personalizados (Fondo y Texto)
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 85, 51, 206),
                foregroundColor: Colors.white,
              ),
              child: const Text('Fondo y texto'),
            ),

            // Botón sin sombra (Sin Elevación)
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
              ),
              child: const Text('Sin elevación (Plano)'),
            ),

            // 4. Botón con borde de color
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  color: Color.fromARGB(255, 122, 21, 184),
                  width: 2,
                ),
              ),
              child: const Text('Borde de color'),
            ),

            // Botón cuadrado (Sin radio de borde)
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text('Hola Mundo con Flutter'),
            ),

            // ElevatedButton.icon con color de fondo diferente
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.save),
              label: const Text('Guardar cambios'),
            ),

            // Botón totalmente circular
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                backgroundColor: const Color.fromARGB(255, 221, 231, 240),
              ),
              child: const Icon(Icons.add),
            ),

            // Botón con sombra de color intenso (Efecto neón/glow)
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 15,
                shadowColor: const Color.fromARGB(255, 56, 54, 55),
              ),
              child: const Text('Sombra Intensa'),
            ),

            // Botón con mucho padding interno (Más espacioso)
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
              ),
              child: const Text('Padding Ampliado'),
            ),

            // TextButton, bbotón plano)
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.indigo, // Color del texto y del splash
                textStyle: const TextStyle(fontSize: 16),
              ),
              child: const Text('Boton de solo Texto'),
            ),

            // TextButton.icon (Texto + Icono sin fondo)
            TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 105, 7, 134),
              ),
              icon: const Icon(Icons.download),
              label: const Text('Descargar aqui'),
            ),

            // Botón con icono a la derecha (Usando Row manualmente)
            ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min, // Ajusta el Row al contenido
                children: [
                  Text('Siguiente'),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
