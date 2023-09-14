import 'package:get/get.dart';
import 'package:shop_new/domain/entities/CustomerModal.dart';

import '../../domain/entities/orderModal.dart';
import '../../domain/entities/product_modal.dart';

class OrderCntlr extends GetxController {
  final orderedItems = <OrderModal>[
    // OrderModal(OrderItemName, orderitemimg, orderID, itemCount, productprice, deliverycharge, Total, paymentType, orderTime, Status, customerdetails)
    OrderModal(
        ProductModal(
            "Mobile1",
            "18000",
            "15999",
            "assets/img1.jpeg",
            "assets/img1.jpeg",
            "assets/img1.jpeg",
            "smart phone",
            "good phone",
            "amoled ",
            "10",
            "1234567890"),
        "1234",
        "2",
        "0",
        "15999",
        "cash on delivery",
        "11:59 am",
        "pending",
        CustomerModal("Hamdan", "123456789", "kozhikara", "1234", "calicut",
            "cash on delivery")),
    OrderModal(
        ProductModal(
            "Mobile2",
            "20000",
            "18999",
            "assets/img1.jpeg",
            "assets/img1.jpeg",
            "assets/img1.jpeg",
            "smart phone",
            "gaming phone",
            "super battery ",
            "5",
            "9876543211"),
        "5678",
        "1",
        "10",
        "19009",
        "Upi",
        "10:00 pm",
        "pending",
        CustomerModal(
            "kiran", "987654321", "pazhiyur", "5678", "kollam", "Upi")),
  ];
}
