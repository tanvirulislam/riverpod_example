Future<String> cityWeather(String city) async {
  return await Future.delayed(
    Duration(seconds: 2),
    () => 'City $city 33°C',
  );
}
