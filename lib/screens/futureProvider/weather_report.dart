Future<String> fetchWeather() async {
  return await Future.delayed(
    Duration(seconds: 2),
    () => '33°C',
  );
}
