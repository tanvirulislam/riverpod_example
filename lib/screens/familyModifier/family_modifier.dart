import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_riverpod/screens/familyModifier/weather_report.dart';

final weatherProvider =
    FutureProvider.autoDispose.family<String, String>((ref, cityName) {
  return cityWeather(cityName);
});

class FamilyModifier extends ConsumerWidget {
  FamilyModifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Family Modifire')),
      body: Center(
        child: ref.watch(weatherProvider('Dhaka || ')).when(
              data: (data) => Text(data),
              error: (error, stackTrace) => null,
              loading: () => CircularProgressIndicator(),
            ),
      ),
    );
  }
}
