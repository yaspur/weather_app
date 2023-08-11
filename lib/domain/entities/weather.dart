class Weather {

  final String name;
  final dynamic main;
  final dynamic wind;
  final dynamic weather;

  Weather({
    required this.name, 
    required this.main, 
    required this.wind, 
    required this.weather
  });

  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      name: json['name'], 
      main: json['main'], 
      wind: json['wind'], 
      weather: json['weather']
    );
  }


}