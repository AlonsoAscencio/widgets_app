import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/presentation/providers/counter_provider.dart';
import 'package:widgets_app/config/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counterValue = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(themeProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          actions: [
            IconButton(
                icon: Icon(isDarkMode
                    ? Icons.light_mode_outlined
                    : Icons.dark_mode_outlined),
                onPressed: () {
                  ref
                      .read(themeProvider.notifier)
                      .update((isDarkmode) => !isDarkMode);
                })
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter: $counterValue',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 20),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
          child: const Icon(Icons.add),
        ));
  }
}
