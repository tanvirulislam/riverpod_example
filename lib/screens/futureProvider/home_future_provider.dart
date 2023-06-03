import 'package:flutter/material.dart';
import 'package:project_riverpod/screens/futureProvider/future_provider.dart';

class HomeFutureProvider extends StatelessWidget {
  const HomeFutureProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WeatherScreen(),
              ),
            );
          },
          child: Text('Check Weather'),
        ),
      ),
    );
  }
}
