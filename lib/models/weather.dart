class Weather {
  final String city;
  final double tempC;
  final String description;
  final int humidity;
  final String icon;

  Weather({
    required this.city,
    required this.tempC,
    required this.description,
    required this.humidity,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final city = json['name'] as String? ?? 'Unknown';
    final main = json['main'] as Map<String, dynamic>? ?? {};
    final weatherList = json['weather'] as List<dynamic>? ?? [];
    final weather0 = weatherList.isNotEmpty
        ? weatherList[0] as Map<String, dynamic>
        : <String, dynamic>{};

    return Weather(
      city: city,
      tempC: (main['temp'] as num?)?.toDouble() ?? 0.0,
      description: (weather0['description'] as String?) ?? 'N/A',
      humidity: (main['humidity'] as num?)?.toInt() ?? 0,
      icon: (weather0['icon'] as String?) ?? '',
    );
  }
}
