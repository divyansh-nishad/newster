import 'package:flutter/material.dart';
import 'package:newster/widgets/image_container.dart';

import '../models/article_model.dart';
import '../widgets/custom_tag.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  static const routeName = '/article';
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            _NewsHeadline(
              article: article,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTag(backgroundColor: Colors.black, children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(article.imageUrl),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          article.author,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        )
                      ]),
                      const SizedBox(width: 10),
                      CustomTag(
                          backgroundColor: Colors.grey.shade200,
                          children: [
                            const Icon(
                              Icons.timer,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              article.createdAt.toString(),
                              style: Theme.of(context).textTheme.bodyMedium!,
                            )
                          ]),
                      const SizedBox(width: 10),
                      CustomTag(
                          backgroundColor: Colors.grey.shade200,
                          children: [
                            const Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              article.source.toString(),
                              style: Theme.of(context).textTheme.bodyMedium!,
                            )
                          ]),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    article.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    article.body,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          height: 1.5,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NewsHeadline extends StatelessWidget {
  const _NewsHeadline({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Text(
              article.author,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            )
          ]),
          const SizedBox(height: 10),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            article.subtitle,
            maxLines: 2,
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
