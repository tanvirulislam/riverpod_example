import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_riverpod/screens/futureProvider/weather_report.dart';

class WeatherScreen extends ConsumerWidget {
  WeatherScreen({super.key});

  final weatherProvider = FutureProvider<String>((ref) => fetchWeather());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Temperature')),
      body: ref.watch(weatherProvider).when(
        data: (data) {
          return Center(child: Text(data, textScaleFactor: 2.5));
        },
        error: (error, stackTrace) {
          return Text('something is wrong');
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
