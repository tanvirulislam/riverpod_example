import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_riverpod/screens/futureProvider/home_future_provider.dart';
import 'package:project_riverpod/screens/futureProvider/future_provider.dart';
import 'package:project_riverpod/screens/stateNotifierProvider/home.dart';
import 'package:project_riverpod/screens/stateProvider/state_provider.dart';
import 'package:project_riverpod/screens/streamProvider/home_stream_provider.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CounterWidget(),
      home: HomeStateNotifier(),
    );
  }
}
