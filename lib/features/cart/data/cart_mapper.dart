import 'package:remas_land/core/database/app_database.dart' as db;
import 'package:remas_land/core/database/daos/cart_dao.dart';
import 'package:remas_land/core/database/daos/orders_dao.dart';
import 'package:remas_land/features/cart/domain/cart_item_entity.dart';
import 'package:remas_land/features/cart/domain/order_entity.dart';
import 'package:remas_land/features/catalog/data/catalog_mapper.dart';

/// Maps Drift cart, promo, and order rows to pure domain entities.
abstract final class CartMapper {
  static CartItemEntity cartItemToEntity(CartItemWithProduct row) {
    return CartItemEntity(
      product: CatalogMapper.productToEntity(row.product),
      quantity: row.cartItem.quantity,
    );
  }

  static PromoCodeEntity promoToEntity(db.PromoCode row) {
    return PromoCodeEntity(
      code: row.code,
      title: row.title,
      description: row.description,
      discountType: row.discountType,
      discountValue: row.discountValue,
      minOrderPiasters: row.minOrderPiasters,
      isActive: row.isActive,
    );
  }

  static OrderEntity orderToEntity(OrderWithItems row) {
    return OrderEntity(
      id: row.order.id,
      orderNumber: row.order.orderNumber,
      status: row.order.status,
      addressSummary: row.order.addressSummary,
      paymentMethod: row.order.paymentMethod,
      subtotalPiasters: row.order.subtotalPiasters,
      deliveryFeePiasters: row.order.deliveryFeePiasters,
      packagingFeePiasters: row.order.packagingFeePiasters,
      discountPiasters: row.order.discountPiasters,
      totalPiasters: row.order.totalPiasters,
      promoCode: row.order.promoCode,
      createdAt: row.order.createdAt,
      items: row.items
          .map(
            (item) => OrderItemEntity(
              id: item.id,
              orderId: item.orderId,
              productId: item.productId,
              productName: item.productName,
              unitLabel: item.unitLabel,
              imageAsset: item.imageAsset,
              unitPricePiasters: item.unitPricePiasters,
              quantity: item.quantity,
            ),
          )
          .toList(),
    );
  }
}
