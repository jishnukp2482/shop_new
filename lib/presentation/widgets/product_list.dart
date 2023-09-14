import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_new/presentation/manager/orderCntlr.dart';
import 'package:shop_new/presentation/pages/product/updte_delete.dart';

import '../../domain/entities/product_modal.dart';
import '../manager/product_cntlr.dart';
import '../themes/app_colors.dart';

class ProductMenu extends StatefulWidget {
  const ProductMenu({super.key});

  @override
  State<ProductMenu> createState() => _ProductMenuState();
}

class _ProductMenuState extends State<ProductMenu> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Productcntlr());
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.productlist.length,
      itemBuilder: (context, index) {
        return ProductItem(modal: controller.productlist[index]);
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.modal});
  final ProductModal modal;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => ProudctUpDelete(itemData: modal));
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
                      modal.productImage1,
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
                        modal.productName,
                        style: TextStyle(color: AppColors.black, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Price: ${modal.productDiscountedPrice}",
                        style: TextStyle(
                          color: AppColors.greyText,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Stock: ${modal.productStockCount}",
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
                    Get.to(() => ProudctUpDelete(itemData: modal));
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
