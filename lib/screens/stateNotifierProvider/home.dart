import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_riverpod/screens/stateNotifierProvider/state_notifier_provider.dart';

class HomeStateNotifier extends ConsumerWidget {
  const HomeStateNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Counter(),
              )),
          child: Text('StateNotifier'),
        ),
      ),
    );
  }
}
