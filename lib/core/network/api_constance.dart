class ApiConstance {
  static const String baseUrl = 'https://fakestoreapi.com';

  static const String allProductsPath = '$baseUrl/products';
  static const String categoriesNamePath = '$allProductsPath/categories';

  static  String productPath (int productId)=> '$allProductsPath/$productId';

  static const String baseCategory = '$allProductsPath/category';

static  String categoryPath(String categoryName)=>"$baseCategory/$categoryName";

  static String imageUrl(String path)=>path;


}
