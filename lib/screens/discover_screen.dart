import 'package:flutter/material.dart';
import 'package:newster/screens/article_screen.dart';
import 'package:newster/widgets/image_container.dart';

import '../models/article_model.dart';
import '../widgets/bottom_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  static const routeName = '/discover';
  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Health', 'Politics', 'Art', 'Food', 'Science'];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
          bottomNavigationBar: const BottomNavBar(index: 0),
          body: ListView(
              padding: const EdgeInsets.all(20.0),
              children: [DiscoverNews(), _CategoryNews(tabs: tabs)])),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          labelStyle: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
          tabs: tabs
              .map((e) => Tab(
                    child: Text(e),
                  ))
              .toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs
                .map((e) => ListView.builder(
                      shrinkWrap: true,
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              ArticleScreen.routeName,
                              arguments: articles[index],
                            );
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ImageContainer(
                                  width: 80,
                                  height: 80,
                                  margin: const EdgeInsets.all(10),
                                  borderRadius: 5,
                                  imageUrl: articles[index].imageUrl,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      articles[index].title,
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.schedule,
                                          size: 18,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(
                                          Icons.visibility,
                                          size: 18,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          '${articles[index].views} views',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class DiscoverNews extends StatelessWidget {
  const DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Discover',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            'News from all over the world',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Icon(Icons.search),
              suffixIcon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.tune),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
