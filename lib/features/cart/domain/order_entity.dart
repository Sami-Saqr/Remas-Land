import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';

/// Placed order line item snapshot.
@freezed
abstract class OrderItemEntity with _$OrderItemEntity {
  const factory OrderItemEntity({
    required int id,
    required String orderId,
    required String productId,
    required String productName,
    required String unitLabel,
    required String imageAsset,
    required int unitPricePiasters,
    required int quantity,
  }) = _OrderItemEntity;
}

/// Placed order entity (monetary amounts in integer piasters).
@freezed
abstract class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    required String id,
    required String orderNumber,
    required String status,
    required String addressSummary,
    required String paymentMethod,
    required int subtotalPiasters,
    required int deliveryFeePiasters,
    required int packagingFeePiasters,
    required int discountPiasters,
    required int totalPiasters,
    String? promoCode,
    required DateTime createdAt,
    required List<OrderItemEntity> items,
  }) = _OrderEntity;
}
