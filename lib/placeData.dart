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
      [
        "lib/assets/palac_kultury.jpeg",
        "lib/assets/palac_kultury_stare.jpg",
        "lib/assets/palac_kultury_stare2.jpg"
      ],
      "The Palace of Culture and Science, located in Warsaw, Poland, is an iconic symbol of the city's skyline. Standing at over 230 meters tall, it is the tallest building in Poland and one of the tallest in Europe. Built in the 1950s, it was a gift from the Soviet Union to the Polish people. The architecture reflects a mix of Socialist Realism and Polish historicism, with intricate detailing on its façade. Today, the Palace serves as a cultural hub, housing theaters, museums, cinemas, and other cultural institutions. Visitors can enjoy panoramic views of Warsaw from its observation deck. Despite its controversial history, the Palace remains a significant landmark, both architecturally and culturally, representing the resilience and heritage of Warsaw. Its imposing presence continues to evoke both awe and debate among locals and tourists alike.",
      [
        "Gifted by Stalin to Poland as a symbol of friendship!",
        "Tallest building in Poland, once the tallest in Europe!",
        "Offers a diverse range of facilities, from theaters to swimming pools!"
      ],
      "1952 r.",
      "Plac Defilad",
      "1",
      52,
      20),
  PlaceData(
      "Rotunda",
      [
        "lib/assets/rotunda.jpg",
        "lib/assets/rotunda_stare.jpg",
        "lib/assets/rotunda_stare2.jpg"
      ],
      "The Rotunda of Warsaw, also known as the Rotunda of the Mostowski Palace, is a historic building located in the heart of Warsaw, Poland. Originally constructed in the late 18th century, it served various purposes over the years, including as a residence for noble families and as a bank. However, it gained particular significance during the communist era when it became infamous as a site for secret police activities and political repression. The building's cylindrical shape and distinctive architecture make it stand out among the surrounding structures. Despite its troubled past, the Rotunda has been preserved as a reminder of Poland's complex history and is now used for cultural events, exhibitions, and as a venue for public discussions. It serves as a symbol of resilience and the ongoing quest for freedom and democracy in Warsaw.",
      [
        "Once a covert hub for secret police activities!",
        "Its unique circular shape sets it apart in Warsaw's skyline!",
        "Originally a bustling bank, now transformed into a cultural hotspot!"
      ],
      "2000 r.",
      "Marszałkowska",
      "159",
      52.1,
      21),
  PlaceData(
      "BUW",
      [
        "lib/assets/buw.png",
        "lib/assets/buw_stare.png",
        "lib/assets/buw_stare2.png"
      ],
      "The University of Warsaw Library (BUW), situated in Warsaw, Poland, is a striking modern architectural marvel. Designed by architects Marek Budzyński and Zbigniew Badowski, it was completed in 1999 and stands as one of the most recognizable landmarks in the city. The building's unique design features a glass façade adorned with irregularly shaped aluminum panels, creating a visually stunning effect. Inside, the library houses a vast collection of books, journals, and multimedia resources, serving as a vital academic and cultural hub for students, researchers, and the general public alike. With its spacious reading rooms, state-of-the-art facilities, and panoramic views of the city, BUW provides an inspiring environment for learning and exploration. Additionally, its rooftop garden offers a serene oasis amidst the urban landscape, making it a popular spot for relaxation and contemplation. As a beacon of knowledge and innovation, the University of Warsaw Library embodies the spirit of intellectual pursuit and academic excellence in the heart of Poland's capital.",
      [
        "Houses a vast collection of knowledge and resources!",
        "Its modern design with a glass facade is a standout in Warsaw!",
        "Features a serene rooftop garden, perfect for relaxation and inspiration!"
      ],
      "1993 r.",
      "Dolna",
      "5",
      52.12,
      21.4),
  PlaceData(
      "Centrum",
      [
        "lib/assets/centrum.jpg",
        "lib/assets/centrum2.jpeg",
        "lib/assets/centrum_stare.jpg",
        "lib/assets/centrum_stare2.jpg"
      ],
      "The center of Warsaw, often referred to as 'Centrum', is the bustling heart of Poland's capital city. This vibrant district is characterized by its mix of modern skyscrapers, historic landmarks, cultural institutions, and lively streets. At its core lies the iconic Palace of Culture and Science, a towering symbol of Warsaw's skyline. Surrounding the Palace, visitors can explore the bustling streets filled with shops, restaurants, and cafes, offering a taste of both traditional Polish cuisine and international flavors. The area is also home to numerous cultural attractions, including museums, galleries, and theaters, where visitors can delve into Warsaw's rich history and vibrant arts scene. Centrum is not only a hub of commerce and culture but also a dynamic urban space where locals and tourists come together to experience the energy and diversity of Poland's capital city. Whether wandering through historic squares, admiring modern architecture, or enjoying a leisurely stroll along the Vistula River, Centrum Warsaw offers something for everyone to discover and enjoy.",
      [
        "Home to the iconic Palace of Culture and Science!",
        "A vibrant mix of modern skyscrapers and historic landmarks!",
        "Buzzing with cultural institutions, restaurants, and shops!"
      ],
      "1700 r.",
      "Jana Pawła",
      "20",
      52.95,
      20.7),
  PlaceData(
      "Barbakan",
      ["lib/assets/barbakan.jpg", "lib/assets/barbakan_stare.jpg"],
      "The Barbican of Warsaw, known as 'Barbakan' in Polish, stands as a testament to the city's medieval fortifications. Built in the 16th century as part of the defensive walls surrounding Warsaw's Old Town, it served as a key defensive structure protecting the city from invaders. Constructed in a distinctive circular shape with thick walls and defensive towers, the Barbican exemplifies Renaissance military architecture. Over the centuries, as warfare evolved, its military significance waned, and it was eventually incorporated into the city's urban fabric. Despite suffering damage during wars and conflicts, extensive restoration efforts in the 20th century have preserved its historic charm. Today, the Barbican serves as a popular tourist attraction and a symbol of Warsaw's resilience and heritage. Visitors can explore its interior, which houses exhibitions on medieval warfare and the history of Warsaw's fortifications. Surrounding the Barbican, the picturesque Old Town Square invites visitors to stroll along cobblestone streets lined with colorful buildings, cafes, and shops, offering a glimpse into Warsaw's storied past and vibrant present.",
      [
        "Part of Warsaw's medieval fortifications!",
        "Built in the 16th century in the distinctive Renaissance style!",
        "Now serves as a historical landmark and venue for exhibitions!"
      ],
      "XV - XVI w.",
      "Świętojańska",
      "3",
      52,
      20.2),
  PlaceData(
      "Kamienica",
      ["lib/assets/kamienica.jpg"],
      "The tenement house is situated in the heart of the Old Town in Warsaw, serving as a remarkable example of surviving historic architecture despite the ravages of World War II. Built in the 18th century in the Baroque style, it captivates with its rich architectural detail. The facade of the tenement house is adorned with intricate sculptures and decorations, giving it a unique character. Inside, the interiors preserve the spirit of past epochs, retaining original elements such as ornate stuccowork, wooden ceiling beams, and stylish fireplaces. The rooms are furnished in a classical style, creating an atmosphere of elegance and refinement. Thanks to its exceptional location, the tenement house offers its residents not only the charm of the historic Old Town but also proximity to numerous restaurants, cafes, and art galleries. It is an ideal place for those who appreciate both the historic allure and the convenience of contemporary urban life.",
      [
        "Boasts a fascinating history dating back to various centuries!",
        "Its architecture features a unique blend of traditional Polish and modernist styles!",
        "Nowadays, it serves as a hub for cultural events, offices, and residential apartments, adding to Warsaw's diverse urban landscape!"
      ],
      "1970 r.",
      "Dworkowa",
      "11",
      52.8,
      20.19),
  PlaceData(
      "Starówka",
      [
        "lib/assets/starowka.jpg",
        "lib/assets/starowka_stare.jpg",
        "lib/assets/starowka_stare.2jpg",
        "lib/assets/starowka_stare3.jpg",
        "lib/assets/starowka_stare4.jpg"
      ],
      "'Starówka' is the Polish term for the Old Town, and Warsaw's Old Town is a captivating district steeped in history and charm. It's a UNESCO World Heritage Site, meticulously reconstructed after the devastation of World War II to recapture its medieval character. Cobblestone streets wind through a maze of colorful buildings adorned with ornate facades and picturesque courtyards, evoking a sense of centuries past. The centerpiece is the historic Market Square, bustling with activity and lined with cafes and shops offering traditional Polish fare and artisanal crafts. Dominating the skyline is the Royal Castle, a majestic symbol of Poland's monarchy and resilience. Visitors can explore historic churches, museums, and galleries, or simply wander the winding alleys to soak in the atmosphere. Whether by day, when street performers entertain crowds, or by night, when the illuminated buildings cast a magical glow, the Old Town of Warsaw is a timeless treasure waiting to be discovered.",
      [
        "Designated as a UNESCO World Heritage Site for its historical significance!",
        "Meticulously reconstructed after World War II to preserve its medieval character!",
        "Home to the iconic Royal Castle and bustling Market Square, offering a glimpse into Warsaw's rich past!"
      ],
      "XVIII w.",
      "Nowy Świat",
      "1",
      52.3,
      20.557)
];
