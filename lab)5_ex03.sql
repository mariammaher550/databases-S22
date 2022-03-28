CREATE TABLE Airport(
  IATACode int PRIMARY KEY
);
CREATE TABLE FlightLeg(
  flightLeg_id int PRIMARY KEY
);
CREATE TABLE Flight(
  flight_num int PRIMARY KEY,
  flightLeg_id int,
  foreign key(flightLeg_id) REFERENCES FlightLeg(flightLeg_id)
);
CREATE TABLE AircraftType(
  type_id int PRIMARY KEY
);
CREATE TABLE DailyFlightLegCombination(
  DFLeg_id int PRIMARY KEY
);
CREATE TABLE DailyFlightLeg(
  DFLegId int,
  flightLegId int,
  foreign key(DFLeg_id) REFERENCES DailyFlightLegCombination(DFLeg_id),
  foreign key(flightLeg_id) REFERENCES FlightLeg(flightLeg_id)
);
CREATE TABLE CanLand(
  IATACode int,
  type_id int,
  foreign key(IATACode) REFERENCES Airport(IATACode),
  foreign key(type_id) REFERENCES AircraftType(type_id)
);
CREATE TABLE startsAt(
  flightLeg_id int,
  IATACode int,
  foreign key(IATACode) REFERENCES Airport(IATACode),
  foreign key(flightLeg_id) REFERENCES FlightLeg(flightLeg_id)
);
CREATE TABLE endsAt(
  flightLeg_id int,
  IATACode int,
  foreign key(IATACode) REFERENCES Airport(IATACode),
  foreign key(flightLeg_id) REFERENCES FlightLeg(flightLeg_id)
);
