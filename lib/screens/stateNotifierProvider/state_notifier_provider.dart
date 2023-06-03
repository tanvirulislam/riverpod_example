import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_riverpod/screens/stateNotifierProvider/counter_notifier.dart';

class Counter extends ConsumerWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build');
    var val = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(child: Text(val.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
      ),
    );
  }
}
