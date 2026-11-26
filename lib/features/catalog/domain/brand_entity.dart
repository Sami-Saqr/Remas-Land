import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_entity.freezed.dart';

/// Pure domain entity representing a partner dairy or pastry brand.
@freezed
abstract class BrandEntity with _$BrandEntity {
  const factory BrandEntity({
    required String id,
    required String name,
    required String subtitle,
    required int bgColorHex,
    required int textColorHex,
    required int sortOrder,
  }) = _BrandEntity;
}
