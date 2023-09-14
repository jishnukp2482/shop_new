import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/entities/product_modal.dart';
import '../../manager/product_cntlr.dart';
import '../../themes/app_colors.dart';
import '../../widgets/customtextfiled.dart';

class ProudctUpDelete extends StatefulWidget {
  final ProductModal itemData;
  ProudctUpDelete({
    super.key,
    required this.itemData,
  });

  @override
  State<ProudctUpDelete> createState() =>
      _ProudctUpDeleteState(modal: itemData);
}

class _ProudctUpDeleteState extends State<ProudctUpDelete> {
  final productController = Get.put(Productcntlr());
  final ProductModal modal;
  _ProudctUpDeleteState({required this.modal});
  @override
  void initState() {
    productController.prodcuctNamecntlr.text = modal.productName;
    productController.prodcuctCategorycntlr.text = modal.productCategory;
    productController.prodcuctDescriptioncntlr.text = modal.ProductDescription;
    productController.prodcuctDiscountcntlr.text = modal.productDiscountedPrice;
    productController.prodcuctFeaturecntlr.text = modal.productFeatures;
    productController.prodcuctPricecntlr.text = modal.productPrice;
    productController.prodcuctSellerContactNocntlr.text = modal.sellerContactNo;
    productController.prodcuctStockCountcntlr.text = modal.productStockCount;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Product",
          style: TextStyle(color: AppColors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.white,
            )),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.maincolor,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: height * 0.12,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greyText,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: productController.prodcuctNamecntlr,
                  hintText: "Product Name",
                  label: Text("Product Name")),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: productController.prodcuctCategorycntlr,
                  hintText: "Product Category",
                  label: Text("Product Category")),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomTextField(
                          controller: productController.prodcuctPricecntlr,
                          hintText: "Price",
                          label: Text("Price"))),
                  Expanded(
                      child: CustomTextField(
                          controller: productController.prodcuctDiscountcntlr,
                          hintText: "Discounted Price",
                          label: Text("Discounted Price"))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: productController.prodcuctDescriptioncntlr,
                  hintText: "Description",
                  label: Text("Description")),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: productController.prodcuctFeaturecntlr,
                  hintText: "features",
                  label: Text("features")),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: productController.prodcuctStockCountcntlr,
                  hintText: "Stock Count",
                  label: Text("Stock Count")),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: productController.prodcuctSellerContactNocntlr,
                  hintText: "Contact Number",
                  label: Text("Contact Number")),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Delete product"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      foregroundColor: AppColors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Update product"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.maincolor,
                      foregroundColor: AppColors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
