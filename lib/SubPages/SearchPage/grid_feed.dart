import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class GridFeed extends StatelessWidget {
  const GridFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final List<String> imgUrl = [
      'https://picsum.photos/200',
      'https://picsum.photos/id/1/200',
      'https://picsum.photos/id/3/200',
      'https://picsum.photos/id/23/200',
      'https://picsum.photos/id/12/200',
      'https://picsum.photos/id/43/200',
      'https://picsum.photos/id/55/200',
      'https://picsum.photos/id/56/200',
      'https://picsum.photos/id/41/200',
      'https://picsum.photos/id/15/200',
      'https://picsum.photos/id/1/200',
      'https://picsum.photos/id/3/200',
      'https://picsum.photos/id/25/200',
      'https://picsum.photos/id/23/200',
      'https://picsum.photos/id/30/200',
      'https://picsum.photos/id/13/200',
      'https://picsum.photos/id/34/200',
      'https://picsum.photos/id/18/200',
      'https://picsum.photos/id/43/200',
      'https://picsum.photos/id/45/200',
      'https://picsum.photos/id/15/200'
    ];
    final customCacheManager = CacheManager(
      Config('customCacheKey',
          stalePeriod: const Duration(days: 7), maxNrOfCacheObjects: 20),
    );

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: imgUrl.length,
      itemBuilder: (context, index) {
        return CachedNetworkImage(
          key: UniqueKey(),
          cacheManager: customCacheManager,
          imageUrl: imgUrl[index],
          placeholderFadeInDuration: const Duration(milliseconds: 1),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
