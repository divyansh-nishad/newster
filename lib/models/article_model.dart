import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final String views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      author: 'Dan Peck',
      title: "Hurricane Hanna makes landfall around 5 p.m. on Saturday.",
      subtitle: "Hurricane Hanna makes landfall around 5 p.m. on Saturday.",
      body:
          "Hurricane Hanna battered southern Texas with sustained winds of 75 mph and continued to deliver heavy rain and flash flooding as it moved inland late Saturday.",
      views: "1.2M",
      imageUrl:
          "https://s.abcnews.com/images/US/hanna-swimmer-mo_hpMain_20200725-163152_2_4x3t_384.jpg",
      authorImageUrl:
          "https://s.abcnews.com/images/US/hanna-swimmer-mo_hpMain_20200725-163152_2_4x3t_384.jpg",
      category: "general",
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '1',
      author: "Dan Peck",
      title: "Hurricane Hanna makes landfall around 5 p.m. on Saturday.",
      subtitle: "Hurricane Hanna makes landfall around 5 p.m. on Saturday.",
      body:
          "Hurricane Hanna battered southern Texas with sustained winds of 75 mph and continued to deliver heavy rain and flash flooding as it moved inland late Saturday.",
      views: "1.2M",
      imageUrl:
          "https://s.abcnews.com/images/US/hanna-swimmer-mo_hpMain_20200725-163152_2_4x3t_384.jpg",
      authorImageUrl:
          "https://s.abcnews.com/images/US/hanna-swimmer-mo_hpMain_20200725-163152_2_4x3t_384.jpg",
      category: "general",
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '1',
      author: "Dan Peck",
      title: "Hurricane Hanna makes landfall around 5 p.m. on Saturday.",
      subtitle: "Hurricane Hanna makes landfall around 5 p.m. on Saturday.",
      body:
          "Hurricane Hanna battered southern Texas with sustained winds of 75 mph and continued to deliver heavy rain and flash flooding as it moved inland late Saturday.",
      views: "1.2M",
      imageUrl:
          "https://s.abcnews.com/images/US/hanna-swimmer-mo_hpMain_20200725-163152_2_4x3t_384.jpg",
      authorImageUrl:
          "https://s.abcnews.com/images/US/hanna-swimmer-mo_hpMain_20200725-163152_2_4x3t_384.jpg",
      category: "general",
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '1',
      author: "Dan Peck",
      title: "Hurricane Hanna makes landfall around 5 p.m. on Saturday.",
      subtitle: "Hurricane Hanna makes landfall around 5 p.m. on Saturday.",
      body:
          "Hurricane Hanna battered southern Texas with sustained winds of 75 mph and continued to deliver heavy rain and flash flooding as it moved inland late Saturday.",
      views: "1.2M",
      imageUrl:
          "https://s.abcnews.com/images/US/hanna-swimmer-mo_hpMain_20200725-163152_2_4x3t_384.jpg",
      authorImageUrl:
          "https://s.abcnews.com/images/US/hanna-swimmer-mo_hpMain_20200725-163152_2_4x3t_384.jpg",
      category: "general",
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
  ];

  @override
  List<Object> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt
      ];
}
