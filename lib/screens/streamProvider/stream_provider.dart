import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_riverpod/screens/futureProvider/weather_report.dart';
import 'package:project_riverpod/screens/streamProvider/fetch_number.dart';

class NumberScreen extends ConsumerWidget {
  NumberScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Consumer(
        builder: (context, ref, child) {
          return ref.watch(streamProvider).when(
                data: (data) => Center(
                  child: Text(data.toString()),
                ),
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => Center(
                  child: CircularProgressIndicator(),
                ),
              );
        },
      ),
    );
  }
}
