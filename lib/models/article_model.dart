import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart' as http;
import 'package:newster/models/source_model.dart';

class Article {
  // final String id;
  final String title;
  final Source source;
  final String subtitle;
  final String body;
  final String author;
  // final String authorImageUrl;
  // final String category;
  final String url;
  final String imageUrl;
  // final String views;
  final String createdAt;
  final String apikey = '749502be8fb2449b9ffc17a122aa7f4c';

  const Article({
    // required this.id,
    required this.source,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    // required this.authorImageUrl,
    // required this.category,
    required this.imageUrl,
    required this.url,
    // required this.views,
    required this.createdAt,
  });


factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] as String,
      title: json['title'] as String,
      subtitle: json['description'] as String,
      url: json['url'] as String,
      imageUrl: json['urlToImage'] as String,
      createdAt: json['createdAt'] as String,
      body: json['content'] as String,
    );
  }
  
}
