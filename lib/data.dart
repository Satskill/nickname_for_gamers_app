class Data {
  String listem = '';

  Data(String listeler) {
    this.listem = listeler;
  }

  geridonus() {
    switch (listem) {
      case 'popular_list':
        return popular_list;
      case 'legendary_list':
        return legendary_list;
      case 'badass_list':
        return badass_list;
      case 'squad_list':
        return squad_list;
      case 'girl_list':
        return girl_list;
      case 'dinosaur_list':
        return dinosaur_list;
      case 'turkish_list':
        return turkish_list;
      case 'urban_list':
        return urban_list;
      case 'mythology_list':
        return mythology_list;
      case 'fonts':
        return fonts;
      case 'yanlar':
        return yanlar;
    }
  }

  List<String> popular_list = [
    'Dragon',
    'Apple',
    'Android',
    'Oscar',
    'King',
    'Gamer',
    'Ninja',
    'Joker'
  ];
  List<String> legendary_list = [
    'Legend',
    'Fearless',
    'Hero',
    'Ace',
    'Worrior',
    'Winner',
    'DarkKing',
    'TheBest'
  ];
  List<String> badass_list = [
    'Badboy',
    'Psycho',
    'Pinner',
    'Villan',
    'Killer',
    'Devil',
    'Danger',
    'Zero'
  ];
  List<String> squad_list = [
    'Trojans',
    'Team Target',
    'Titanium',
    'Close Shave',
    'Bromania',
    'Jokers Wild',
    'ToxicMafia',
    'Doctors'
  ];
  List<String> girl_list = [
    'Queen',
    'Jax',
    'Patola',
    'Honeybee',
    'Princess',
    'Babygurl',
    'Peaches',
    'SweetBun'
  ];
  List<String> dinosaur_list = [
    'T Rex',
    'Megalosaurus',
    'Iguanodon',
    'Mosasaurus',
    'Allosaurus',
    'Triceratops',
    'Spinosaurus',
    'Eater'
  ];
  List<String> turkish_list = [
    'Çılgın',
    'Delici',
    'Ezici',
    'Manyak',
    'Korkusuz',
    'Zengin',
    'Havalı',
    'Şakacı'
  ];
  List<String> urban_list = [
    'Bruto',
    'Pinner',
    'Duck',
    'Prefabs',
    'Mojitos',
    'Lewhat',
    'Zucken',
    'Traving'
  ];
  List<String> mythology_list = [
    'Adonis',
    'Ares',
    'Thor',
    'Achielles',
    'Zeus',
    'Europa',
    'Hamlet',
    'Hemoros'
  ];
  List<String> fonts = [
    'Fat',
    'Cabin',
    'Cormorant',
    'Dancing',
    'Vibes',
    'Monoton',
    'Dafoe',
    'SC',
    'Orbitron',
    'Marker',
    'Rubik'
  ];
  List<String> yanlar = [
    'xXx',
    '€₺',
    '@!@',
    '-_-',
    '0o0',
    '8.8',
    '<3',
  ];
}
