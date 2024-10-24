import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final int price;
  final List<Color> colors;
  final String category;
  final String rate;
  int quantity;

  Product(
      {required this.title,
      required this.description,
      required this.image,
      required this.review,
      required this.seller,
      required this.price,
      required this.colors,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Product> all = [
  Product(
      title: "Wireless Headphone",
      description: "description",
      image: "images/headphone.png",
      review: "400 review",
      seller: "Top brand",
      price: 450,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Electronics",
      rate: "4.8",
      quantity: 1),
  Product(
      title: "Smart Watch",
      description: "description",
      image: "images/watch.png",
      review: "400 review",
      seller: "Top brand",
      price: 1050,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Electronics",
      rate: "4.9",
      quantity: 1),
  Product(
      title: "Smart Phone",
      description: "description",
      image: "images/phones.png",
      review: "500 review",
      seller: "Top brand",
      price: 10000,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Electronics",
      rate: "4.9",
      quantity: 1),
  Product(
      title: "Mens Jacket",
      description: "description",
      image: "images/menfashion.png",
      review: "400 review",
      seller: "Top brand",
      price: 500,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Fashion",
      rate: "4.8",
      quantity: 1),
  Product(
      title: "Electronics",
      description: "description",
      image: "images/electronics.png",
      review: "400 review",
      seller: "Top brand",
      price: 450,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Electronics",
      rate: "4.8",
      quantity: 1),
  Product(
      title: "Woman Fashion",
      description: "description",
      image: "images/womanfashion.png",
      review: "400 review",
      seller: "Top brand",
      price: 500,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Fashion",
      rate: "4.8",
      quantity: 1),
];

final List<Product> shoes = [
  Product(
      title: "Adidas",
      description: "description",
      image: "images/shoese.png",
      review: "400 review",
      seller: "Top brand",
      price: 500,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Fashion",
      rate: "4.8",
      quantity: 1),
];
final List<Product> womanFashion = [
  Product(
      title: "Woman Fashion",
      description: "description",
      image: "images/womanfashion.png",
      review: "400 review",
      seller: "Top brand",
      price: 500,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Fashion",
      rate: "4.8",
      quantity: 1),
];
final List<Product> menFashion = [
  Product(
      title: "Mens Jacket",
      description: "description",
      image: "images/menfashion.png",
      review: "400 review",
      seller: "Top brand",
      price: 500,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Fashion",
      rate: "4.8",
      quantity: 1),
];
final List<Product> jwelry = [
  Product(
      title: "Jwelry",
      description: "description",
      image: "images/jwelrys.png",
      review: "400 review",
      seller: "Top brand",
      price: 500,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Fashion",
      rate: "4.8",
      quantity: 1),
];
final List<Product> beauty = [
  Product(
      title: "Beauty",
      description: "description",
      image: "images/beauty.png",
      review: "400 review",
      seller: "Top brand",
      price: 500,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Fashion",
      rate: "4.8",
      quantity: 1),
];
final List<Product> homekitchen = [
  Product(
      title: "Kettle",
      description: "description",
      image: "images/home_kitchen.png",
      review: "300 review",
      seller: "Top brand",
      price: 700,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Home & kitchen",
      rate: "4.8",
      quantity: 1),
];

final List<Product> electronics = [
  Product(
      title: "Smart Phone",
      description: "description",
      image: "images/phones.png",
      review: "500 review",
      seller: "Top brand",
      price: 10000,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Electronics",
      rate: "4.9",
      quantity: 1),
  Product(
      title: "Smart Watch",
      description: "description",
      image: "images/watch.png",
      review: "400 review",
      seller: "Top brand",
      price: 1050,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Electronics",
      rate: "4.9",
      quantity: 1),
  Product(
      title: "Wireless Headphone",
      description: "description",
      image: "images/headphone.png",
      review: "400 review",
      seller: "Top brand",
      price: 450,
      colors: [Colors.black, Colors.blueAccent, Colors.white],
      category: "Electronics",
      rate: "4.8",
      quantity: 1),
];
