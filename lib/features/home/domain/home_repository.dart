import 'package:remas_land/features/home/domain/home_feed_entity.dart';

/// Abstract repository contract for the Home storefront feed.
abstract interface class HomeRepository {
  Stream<HomeFeedEntity> watchHomeFeed();
}
