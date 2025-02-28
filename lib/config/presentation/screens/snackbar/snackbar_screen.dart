import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Reprehenderit adipisicing cillum est nulla aliqua cupidatat deserunt consequat consequat aute occaecat et. Ipsum et irure excepteur sint culpa dolor esse. Veniam ut ullamco dolor Lorem tempor nulla ullamco ullamco labore.'),
        actions: [
          TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Aliqua eu sit sit cupidatat consequat excepteur consectetur exercitation eu non anim et. Eiusmod consequat amet deserunt nulla nulla. Deserunt sint voluptate elit consequat ad aliqua officia consectetur ad laboris incididunt dolor. Do commodo ad cillum culpa.'),
                ]);
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
