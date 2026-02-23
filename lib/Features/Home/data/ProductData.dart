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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxklmFM0eWmZjHuYCRUWugdY_lmfaHrOrL2hNLIV1oQ&s',
    name: 'Orange',
    price: 30.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '4',
    categoryId: '1',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwd9pFOnEDBORnRFCt4ZIxN87q6YddK9MSyiCXIPpddwHrq3RDcaZqMFU&s',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxklmFM0eWmZjHuYCRUWugdY_lmfaHrOrL2hNLIV1oQ&s',
    name: 'Orange',
    price: 30.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '4',
    categoryId: '1',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwd9pFOnEDBORnRFCt4ZIxN87q6YddK9MSyiCXIPpddwHrq3RDcaZqMFU&s',
    name: 'Carrot',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'https://www.pngall.com/wp-content/uploads/2016/04/Apple-Fruit-PNG.png',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxklmFM0eWmZjHuYCRUWugdY_lmfaHrOrL2hNLIV1oQ&s',
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
        'https://www.pngall.com/wp-content/uploads/2016/04/Apple-Fruit-PNG.png',
    name: 'Apple',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxklmFM0eWmZjHuYCRUWugdY_lmfaHrOrL2hNLIV1oQ&s',
    name: 'Orange',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
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
    id: '4',
    categoryId: '2',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwd9pFOnEDBORnRFCt4ZIxN87q6YddK9MSyiCXIPpddwHrq3RDcaZqMFU&s',
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