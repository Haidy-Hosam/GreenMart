class ProductModel {
  final String id;
  final String categoryId;
  final String image;
  final String name;
  final double price;
  final String quantityForPrice;

  ProductModel({
    required this.id,
    required this.categoryId,
    required this.image,
    required this.name,
    required this.price,
    required this.quantityForPrice,
  });
}


List<ProductModel> offers = [
  ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'https://www.pngall.com/wp-content/uploads/2016/04/Apple-Fruit-PNG.png',
    name: 'Apple',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '2',
    categoryId: '1',
    image:
        'https://i.pinimg.com/originals/38/1f/ae/381fae890b6d2e3aef851949e261a13a.png',
    name: 'Banana',
    price: 20.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '3',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Orange',
    price: 30.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '4',
    categoryId: '1',
    image: 'https://pngimg.com/d/orange_PNG777.png',
    name: 'Carrot',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
];

List<ProductModel> bestSelling = [
  ProductModel(
    id: '2',
    categoryId: '1',
    image:
        'https://i.pinimg.com/originals/38/1f/ae/381fae890b6d2e3aef851949e261a13a.png',
    name: 'Banana',
    price: 20.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '3',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Orange',
    price: 30.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '4',
    categoryId: '1',
    image: 'https://pngimg.com/d/orange_PNG777.png',
    name: 'Carrot',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Apple',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
];

List<ProductModel> allProducts = [
  ProductModel(
    id: '3',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Orange',
    price: 30.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '2',
    categoryId: '1',
    image:
        'https://i.pinimg.com/originals/38/1f/ae/381fae890b6d2e3aef851949e261a13a.png',
    name: 'Banana',
    price: 20.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'data:image/jpeg;base64,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',
    name: 'Apple',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Apple',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Apple',
    price: 10.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '4',
    categoryId: '2',
    image: 'https://pngimg.com/d/orange_PNG777.png',
    name: 'Carrot',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
];

List<ProductModel> getProductsByCategoryId(String categoryId) {
  return allProducts
      .where((product) => product.categoryId == categoryId)
      .toList();
  // List<ProductModel> filteredProducts = [];

  // for (var product in allProducts) {
  //   if (product.categoryId == categoryId) {
  //     filteredProducts.add(product);
  //   }
  // }
  // return filteredProducts;
}

List<ProductModel> getProductsByName(String searchKey) {
  return allProducts
      .where((product) => product.name.toLowerCase().contains(searchKey.toLowerCase()))
      .toList();
}