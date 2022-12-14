import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/api_service.dart';
class ImageContainer extends StatelessWidget {
   ImageContainer({
    Key? key,
    this.height = 125,
    this.borderRadius = 20,
    required this.width,
    required this.imageUrl,
    this.padding,
    this.margin,
    this.child,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final Widget? child;
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    Future<List<dynamic>> article = client.getArticle();
    final List<Article> news = jsonDecode(article.toString());

    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(news[0].imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
