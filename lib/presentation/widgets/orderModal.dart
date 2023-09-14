import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_new/presentation/pages/order/order_details_page.dart';
import 'package:shop_new/presentation/themes/app_colors.dart';

import '../../domain/entities/orderModal.dart';
import '../manager/orderCntlr.dart';

class orderMenu extends StatefulWidget {
  const orderMenu({super.key});

  @override
  State<orderMenu> createState() => _orderMenuState();
}

class _orderMenuState extends State<orderMenu> {
  final ordercontroller = Get.put(OrderCntlr());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: ordercontroller.orderedItems.length,
      itemBuilder: (context, index) {
        return OrderItems(modal: ordercontroller.orderedItems[index]);
      },
    );
  }
}

class OrderItems extends StatelessWidget {
  const OrderItems({super.key, required this.modal});
  final OrderModal modal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => OrderDetailsPage(
              modal: modal,
            ));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 50,
                    child: Image.asset(
                      modal.productDetails.productImage1,
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        modal.productDetails.productName,
                        style: TextStyle(color: AppColors.black, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Order ID: ${modal.orderID}",
                        style: TextStyle(
                          color: AppColors.greyText,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Status: ${modal.Status}",
                        style: TextStyle(
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {
                    Get.to(() => OrderDetailsPage(
                          modal: modal,
                        ));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColors.black,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
