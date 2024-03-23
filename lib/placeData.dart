class PlaceData {
  String name;
  List<String> imgPaths;
  String description;
  List<String> funFacts;
  String constructionDate;
  String street;
  String streetNr;
  double latitude;
  double longtitude;
  PlaceData(
      this.name,
      this.imgPaths,
      this.description,
      this.funFacts,
      this.constructionDate,
      this.street,
      this.streetNr,
      this.latitude,
      this.longtitude);
}

List<PlaceData> placesData = [
  PlaceData(
      "Pałac Kultury",
      ["lib/assets/palac_kultury.jpeg", "lib/assets/palac_kultury_stare.jpg"],
      "Palac kultury opis",
      ["cool", "wysoki", "komunistyczny"],
      "1952",
      "Plac Defilad",
      "1",
      52,
      20),
  PlaceData(
      "Rotunda",
      ["lib/assets/rotunda.jpg", "lib/assets/rotunda_stare.jpg"],
      "Rotunda opis",
      ["cool", "okrągła", "bank"],
      "2000",
      "Marszałkowska",
      "159",
      52.1,
      21),
  PlaceData(
      "BUW",
      [
        "lib/assets/buw.png",
      ],
      "BUW jest duzy i zielony",
      ["duzy", "zielony", "książki"],
      "1993",
      "Dolna",
      "5",
      52.12,
      21.4),
  PlaceData(
      "Centrum",
      ["lib/assets/centrum.jpg"],
      "Centrum od strony Staszica opis",
      ["długa ulica na zdjeciu", "to widok na centrum a nie centrum"],
      "1700",
      "Jana Pawła",
      "20",
      52.95,
      20.7),
  PlaceData(
      "Barbakan",
      ["lib/assets/barbakan.jpg"],
      "Barbakan przy Starówce opis",
      ["mury", "obok starówki"],
      "1500",
      "Świętojańska",
      "3",
      52,
      20.2),
  PlaceData("Kamienica", ["lib/assets/kamienica.jpg"], "Zwykły budynek opis",
      ["budynek", "okrągły"], "1970", "Dworkowa", "11", 52.8, 20.19),
  PlaceData(
      "Starówka",
      ["lib/assets/starowka.jpg", "lib/assets/nowy_swiat_stare.jpg"],
      "Starówka opis",
      ["nowy świat", "dużo sklepów"],
      "1600",
      "Nowy Świat",
      "1",
      52.3,
      20.557)
];
