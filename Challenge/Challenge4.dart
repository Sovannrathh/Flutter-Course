class Distance {
  final double _meters;

  Distance(this._meters);
// use get
    double get inCentimeters => _meters * 100;
    double get inKilometers => _meters / 1000;
      double get inMeters => _meters;

}
  Distance d1 = new Distance.inKilometers(3.4);
  Distance d2 = new Distance.inMeters(1000); 
  print((d1+d2).inKilometers);
  print((d1+d2).inMeters);
  print((d1+d2).inCentimeters);
}
