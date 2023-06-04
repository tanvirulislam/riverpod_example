import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier(0);
});

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier(super.state);

  void increment() {
    state++;
  }
}
