class Temperature {
  final double? _kelvin;

  Temperature(this._kelvin);

  double? get kelvin => _kelvin;
  double get celsius => _kelvin! - 273.15;
  double get fahrenheit => _kelvin! * (9/5) - 459.67;
}

enum Unit {
  celsius,
  kelvin,
  fahrenheit
}