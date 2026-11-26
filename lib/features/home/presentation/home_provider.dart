import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:remas_land/core/database/database_provider.dart';
import 'package:remas_land/features/home/data/home_repository_impl.dart';
import 'package:remas_land/features/home/domain/home_feed_entity.dart';
import 'package:remas_land/features/home/domain/home_repository.dart';

/// Override-friendly provider for [HomeRepository].
final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepositoryImpl(ref.watch(catalogDaoProvider));
});

final homeFeedProvider = StreamProvider<HomeFeedEntity>((ref) {
  return ref.watch(homeRepositoryProvider).watchHomeFeed();
});
