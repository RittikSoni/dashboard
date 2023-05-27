List<Stock> kStockData = [
  Stock(
    image: 'assets/shoe_1.png',
    idNumber: 'SG812344',
    price: '2500',
    productName: 'American Sneakers Shoes Blue',
    size: '38-45',
    stock: '798',
    brand: 'Zamoran',
    discount: 25,
    discountPrice: 609,
    madeIn: 'Australia',
  ),
  Stock(
    image: 'assets/shoe_1.png',
    idNumber: 'SG812344',
    price: '2500',
    productName: 'American Sneakers Shoes Blue',
    size: '38-45',
    stock: '798',
    brand: 'Zamoran',
    discount: 25,
    discountPrice: 609,
    madeIn: 'Australia',
  ),
  Stock(
    image: 'assets/shoe_1.png',
    idNumber: 'AU812349',
    price: '8500',
    productName: 'American Sneakers Shoes Red',
    size: '38-45',
    stock: '198',
    brand: 'Zamoran',
    discount: 25,
    discountPrice: 609,
    madeIn: 'Australia',
  ),
  Stock(
      brand: 'Zamoran',
      discount: 25,
      discountPrice: 609,
      madeIn: 'Australia',
      image: 'assets/shoe_1.png',
      price: '8999',
      idNumber: 'TD812341',
      productName: 'American Sneakers Shoes Red',
      size: '38-45',
      stock: '198'),
  Stock(
      brand: 'Zamoran',
      discount: 25,
      discountPrice: 609,
      madeIn: 'Australia',
      image: 'assets/shoe_1.png',
      price: '8999',
      idNumber: 'ER12340',
      productName: 'American Sneakers Shoes Red',
      size: '38-45',
      stock: '198'),
];

class Stock {
  String image;
  String productName;
  String size;
  String price;
  String stock;
  String idNumber;
  String madeIn;
  String brand;
  int discount;
  int discountPrice;
  Stock({
    required this.image,
    required this.price,
    required this.idNumber,
    required this.productName,
    required this.size,
    required this.stock,
    required this.brand,
    required this.discountPrice,
    required this.discount,
    required this.madeIn,
  });
}

List<String> kCategoriesData = [
  'Sneakers',
  'Shoes',
  'Snadals',
  'Heels',
];
List<String> kBrandData = [
  'Zamoran',
  'Adidas',
  'Rebook',
];
List<String> kSortBy = [
  'Best Seller',
  'Price',
  'Date',
];
