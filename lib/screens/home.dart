import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:project_riverpod/screens/apiCaling/post_home.dart';
import 'package:project_riverpod/screens/autoDisposeModifier/auto_dispose.dart';
import 'package:project_riverpod/screens/familyModifier/family_modifier.dart';
import 'package:project_riverpod/screens/futureProvider/future_provider.dart';
import 'package:project_riverpod/screens/stateNotifierProvider/state_notifier_provider.dart';
import 'package:project_riverpod/screens/stateProvider/state_provider.dart';
import 'package:project_riverpod/screens/streamProvider/stream_provider.dart';

import 'apiCaling/post.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CounterWidget(),
                  )),
              child: Text('State Provider'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherScreen(),
                  ),
                );
              },
              child: Text('Future Provider'),
            ),
            ElevatedButton(
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
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Counter(),
                  )),
              child: Text('StateNotifier'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AutoDispose(),
                  )),
              child: Text('AutoDispose Modifier'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FamilyModifier(),
                  )),
              child: Text('Family Modifier'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Posthome(),
                  )),
              child: Text('API calling'),
            ),
          ],
        ),
      ),
    );
  }
}
