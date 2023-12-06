class Plants {
  String name;
  String scientificName;
  String type; // (grass, plant, tree)
  String description;
  String lifespan;
  String nativeHabitat;
  String imageUtama;
  List<String> imageUrls;

  Plants({
    required this.name,
    required this.scientificName,
    required this.type,
    required this.description,
    required this.lifespan,
    required this.nativeHabitat,
    required this.imageUtama,
    required this.imageUrls,
  });
}

var listPlant = [
  Plants(
    name: 'Sunflower',
    scientificName: 'Helianthus annuus',
    type: 'plant',
    description:
        'Sunflowers are known for their tall height and large, yellow flower heads. They are commonly grown for their aesthetic appeal and oil-producing seeds.',
    lifespan: 'Annual',
    nativeHabitat: 'North America',
    imageUtama: 'https://source.unsplash.com/featured/?sunflower',
    imageUrls: [
      'https://images.unsplash.com/photo-1536633125620-8a3245c11ffa?q=80&w=1589&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://source.unsplash.com/featured/?sunflower2',
      'https://source.unsplash.com/featured/?sunflower3',
    ],
  ),
  Plants(
    name: 'Oak Tree',
    scientificName: 'Quercus',
    type: 'tree',
    description:
        'The oak tree is a large and long-lived tree that is commonly found in temperate regions. It is known for its strong wood and characteristic acorns.',
    lifespan: 'Long-lived',
    nativeHabitat: 'Various regions',
    imageUtama: 'https://source.unsplash.com/featured/?oaktree',
    imageUrls: [
      'https://source.unsplash.com/featured/?oaktree1',
      'https://source.unsplash.com/featured/?oaktree2',
      'https://source.unsplash.com/featured/?oaktree3',
    ],
  ),
  Plants(
    name: 'Bamboo',
    scientificName: 'Bambusoideae',
    type: 'grass',
    description:
        'Bamboo is a versatile and fast-growing grass known for its strength and flexibility. It is used for various purposes, including construction and culinary uses.',
    lifespan: 'Perennial',
    nativeHabitat: 'Asia',
    imageUtama: 'https://source.unsplash.com/featured/?bamboo',
    imageUrls: [
      'https://source.unsplash.com/featured/?bamboo1',
      'https://source.unsplash.com/featured/?bamboo2',
      'https://source.unsplash.com/featured/?bamboo3',
    ],
  ),
  Plants(
    name: 'Rose',
    scientificName: 'Rosa',
    type: 'plant',
    description:
        'Roses are popular flowering plants known for their beautiful and fragrant blossoms. They come in various colors and are often used as symbols of love and romance.',
    lifespan: 'Perennial',
    nativeHabitat: 'Asia, Europe, North America',
    imageUtama: 'https://source.unsplash.com/featured/?rose',
    imageUrls: [
      'https://source.unsplash.com/featured/?rose1',
      'https://source.unsplash.com/featured/?rose2',
      'https://source.unsplash.com/featured/?rose3',
    ],
  ),
  Plants(
    name: 'Fern',
    scientificName: 'Polypodiopsida',
    type: 'plant',
    description:
        'Ferns are non-flowering vascular plants with feathery leaves. They are commonly found in moist environments and are known for their unique reproductive structures.',
    lifespan: 'Perennial',
    nativeHabitat: 'Global distribution',
    imageUtama: 'https://source.unsplash.com/featured/?fern',
    imageUrls: [
      'https://source.unsplash.com/featured/?fern1',
      'https://source.unsplash.com/featured/?fern2',
      'https://source.unsplash.com/featured/?fern3',
    ],
  ),
  Plants(
    name: 'Palm Tree',
    scientificName: 'Arecaceae',
    type: 'tree',
    description:
        'Palm trees are tropical and subtropical plants known for their large, evergreen leaves. They are often associated with sunny beaches and warm climates.',
    lifespan: 'Long-lived',
    nativeHabitat: 'Tropical regions',
    imageUtama: 'https://source.unsplash.com/featured/?palmtree',
    imageUrls: [
      'https://source.unsplash.com/featured/?palmtree1',
      'https://source.unsplash.com/featured/?palmtree2',
      'https://source.unsplash.com/featured/?palmtree3',
    ],
  ),
];
