class Jeepney {
  String route;
  int capacity;
  double _fare;

  Jeepney(this.route, this.capacity, this._fare);

  double getFare() {
    return _fare;
  }

  void updateFare(double newFare) {
    _fare = newFare;
  }

  void pickUpPassengers(int passengers) {
    print('The jeepney on route $route picked up $passengers passengers.');
  }

  void travel() {
    print('The jeepney is traveling along route $route.');
  }
}

void main() {
  List<Jeepney> jeepneys = [
    Jeepney('Cubao - Quiapo', 20, 13.0),
    Jeepney('Pasig - Makati', 18, 15.0),
  ];

  for (var jeepney in jeepneys) {
    print('Route: ${jeepney.route}');
    print('Capacity: ${jeepney.capacity}');
    print('Fare: ₱${jeepney.getFare()}');

    jeepney.travel();
    jeepney.pickUpPassengers(5);

    print('');
  }

  jeepneys[0].updateFare(14.0);
  print('Updated fare for ${jeepneys[0].route}: ₱${jeepneys[0].getFare()}');
}
