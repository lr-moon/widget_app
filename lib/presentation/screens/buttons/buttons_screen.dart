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
    //Theme.of para que busque lo mas cercano a el
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      //cuando ya no hay espacios
      child: Wrap(
        spacing: 18,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Boton elevado con sombra'),
          ),
          const ElevatedButton(
            onPressed: null,
            child: Text('Boton deshabilitado'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_home_outlined),
            label: const Text('Eleveted icon'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.star),
            label: const Text("Elevated Icon"),
          ),
          FilledButton(onPressed: () {}, child: const Text("Filled")),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.check_circle_outline),
            label: const Text("Filled Icon"),
          ),
          const SizedBox(width: 10),
          OutlinedButton(onPressed: () {}, child: const Text("Outline")),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
            label: const Text("Outline Icon"),
          ),
          const SizedBox(width: 10),
          TextButton(onPressed: () {}, child: const Text("TextB")),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 201, 216, 229),
              foregroundColor: Colors.purple,
            ),
            icon: const Icon(Icons.save),
            label: const Text('Guardar cambios'),
          ),

          TextButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 239, 231, 172),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            icon: const Icon(Icons.download),
            label: const Text('Descargar'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.calendar_today_outlined),
            label: const Text('Calendario'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.coffee_maker),
            label: const Text('cafetera'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(15),
            ),
            child: const Icon(Icons.apps),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add_moderator_outlined),
            label: const Text('TextB Icon'),
          ),
          const CustomButton(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.app_registration_rounded),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colors.primary),
              iconColor: MaterialStatePropertyAll(Colors.white),
            ),
            //WidgetStatePropertyAll :permite un estado a nuestro color que vamos elegir en su momento
            //ButtonStyle: darle estilo a los botones
            //iconColor:darel un color a mi icono
            //MaterialStatePropertyAll:darle una propiedad a nuestro icon
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    //ClipRRect:que recorte y crea los bordes
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
