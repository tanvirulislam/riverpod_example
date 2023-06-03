import 'package:flutter_riverpod/flutter_riverpod.dart';

Stream<int> fetchNumber() {
  return Stream<int>.periodic(
    Duration(seconds: 1),
    (computationCount) => computationCount,
  ).take(100);
}

final streamProvider = StreamProvider<int>((ref) {
  return fetchNumber();
});
