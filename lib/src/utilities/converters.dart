class Temperature {
  final double? _kelvin;

  Temperature(this._kelvin);

  double? get kelvin => _kelvin;
  double get celsius => _kelvin! - 273.15;
  double get fahrenheit => _kelvin! * (9/5) - 459.67;

  double as(Unit unit) {
    switch(unit) {
      case Unit.celsius: return celsius;
      case Unit.kelvin: return kelvin ?? 0.0;
      case Unit.fahrenheit: return fahrenheit;
    }
  }
}

enum Unit {
  celsius,
  kelvin,
  fahrenheit
}