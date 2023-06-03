import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});

class AutoDispose extends ConsumerWidget {
  const AutoDispose({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto dispose'),
      ),
      body: Center(
        child: Text(
          ref.watch(counterProvider).toString(),
          textScaleFactor: 2.5,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
