import 'package:phoneshop/models/best_selling_product_model.dart';
import 'package:phoneshop/models/popular_product_models.dart';

final _headphones = PopularProductModel(
  imageUrl: 'images/headphones.png',
  price: 250,
  oldPrice: 500,
  discount: 50,
);

final _earphones = PopularProductModel(
  imageUrl: 'images/earphones.png',
  price: 125,
  oldPrice: 250,
  discount: 50,
);

final _watch = PopularProductModel(
  imageUrl: 'images/watch.png',
  price: 200,
  oldPrice: 400,
  discount: 50,
);

final List<PopularProductModel> popularProductsList = [
  _headphones,
  _earphones,
  _watch,

];

final _eruptM9 = BestSellingProductModel(
    imageUrl: 'images/head1.jpeg',
    price: 399,
    description: '3D Sound 2.5Hz',
    name: 'Erupt M9',
    rating: 5,
    listImagesUrl: ['images/head2.jpeg','images/head3.jpeg','images/head1.jpeg'],
    battery: 24,
    input: 30,
    bluetooth: 3.9,
    sound: 3,
    maxDescription: 'M9 Technical features including a masterclass.'
);

final List<BestSellingProductModel> bestSellingProductsList = [
  _eruptM9,
  _eruptM9,
];