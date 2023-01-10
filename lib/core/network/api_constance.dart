class ApiConstance {
  static const String baseUrl = 'https://fakestoreapi.com';

  static const String allProductsPath = '$baseUrl/products';

  static  String productPath (int productId)=> '$allProductsPath/$productId';

  static const String baseCategory = '$allProductsPath/category';

static  String categoryPath(String categoryName)=>"$baseCategory/$categoryName";

  static String imageUrl(String path)=>path;

  //
  // static  String movieDetailsPath(int movieId) =>
  //     '$baseUrl/movie/$movieId?api_key=';
  //
  // static  String recommendationPath(int movieId) =>
  //     '$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';
  //
  //
  // static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  //
  // static String imageUrl(String path) => '$baseImageUrl$path';
}
