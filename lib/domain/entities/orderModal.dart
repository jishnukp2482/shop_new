import 'package:shop_new/domain/entities/product_modal.dart';

import 'CustomerModal.dart';

class OrderModal {
  final ProductModal productDetails;
  final String orderID;
  final String itemCount;
  final String deliverycharge;
  final String Total;
  final String paymentType;
  final String orderTime;
  final String Status;
  final CustomerModal customerdetails;

  OrderModal(
      this.productDetails,
      this.orderID,
      this.itemCount,
      this.deliverycharge,
      this.Total,
      this.paymentType,
      this.orderTime,
      this.Status,
      this.customerdetails);
}
