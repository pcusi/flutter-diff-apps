class AugmentedBrands {
  final String name;

  AugmentedBrands({required this.name});

  static List<AugmentedBrands> brands = [
    AugmentedBrands(name: 'Most Liked'),
    AugmentedBrands(name: 'Animals'),
    AugmentedBrands(name: 'Humans/Characters'),
  ];

    static List<AugmentedBrands> brandsSearch = [
    AugmentedBrands(name: 'Most Liked'),
    AugmentedBrands(name: 'Animated'),
    AugmentedBrands(name: 'Space'),
    AugmentedBrands(name: 'Animals'),
  ];

}