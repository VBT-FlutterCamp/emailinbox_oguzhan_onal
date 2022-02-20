import 'package:flutter/material.dart';

class CleanPageCardModel {
  final String title;
  final String link;

  CleanPageCardModel({required this.title, required this.link});
}

List<CleanPageCardModel> cards = [
  CleanPageCardModel(
    title: "Coding Journey",
    link: "wwww.coding-journey.io",
  ),
  CleanPageCardModel(
      title: "Smashing Magazine", link: "https://www.smashingmagazine.com"),
  CleanPageCardModel(title: "UX Labs", link: "https://www.uxlabs.co"),
  CleanPageCardModel(
      title: "The Netlify Blog", link: "https://www.netlify.com/blog/"),
  CleanPageCardModel(
    title: "Student Life",
    link: "https://www.studentlife.com",
  ),
  CleanPageCardModel(
    title: "Hello.io",
    link: "https://www.hello.io",
  ),
];
