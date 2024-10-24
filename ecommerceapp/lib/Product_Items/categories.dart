class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

final List<Category> categoriesList = [
  Category(title: "All", image: "images/alls.png"),
  Category(title: "Shose", image: "images/shoese.png"),
  Category(title: "Beauty", image: "images/beauty.png"),
  Category(title: "Men`\nFashion", image: "images/menfashion.png"),
  Category(title: "Jwelry", image: "images/jwelry.png"),
  Category(title: "Woman`\nFashion", image: "images/fashion_woman.png"),
  Category(title: "Home`\nKitchen", image: "images/home_kitchen.png"),
  Category(title: "Electronics", image: "images/alls.png"),
];
