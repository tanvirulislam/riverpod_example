import 'package:flutter/material.dart';
import 'package:project_riverpod/screens/futureProvider/future_provider.dart';
import 'package:project_riverpod/screens/streamProvider/stream_provider.dart';

class HomeStreamProvider extends StatelessWidget {
  const HomeStreamProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NumberScreen(),
              ),
            );
          },
          child: Text('Stream Provider'),
        ),
      ),
    );
  }
}
