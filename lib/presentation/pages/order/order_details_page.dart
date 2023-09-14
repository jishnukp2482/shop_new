import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_new/domain/entities/CustomerModal.dart';
import 'package:shop_new/domain/entities/orderModal.dart';
import 'package:shop_new/presentation/themes/app_colors.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({
    super.key,
    required this.modal,
  });
  final OrderModal modal;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.maincolor,
        title: Text(
          "Order Detials",
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            modal.productDetails.productName,
                            style:
                                TextStyle(color: AppColors.black, fontSize: 18),
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
                            "Status : ${modal.Status}",
                            style: TextStyle(
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        "item price",
                        style: TextStyle(color: AppColors.black),
                      )),
                      Expanded(
                          child: Center(
                        child: Text(
                          ":",
                          style: TextStyle(color: AppColors.black),
                        ),
                      )),
                      Expanded(
                          child: Text(
                        modal.productDetails.productPrice,
                        style: TextStyle(color: AppColors.black),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        "Delivery charge",
                        style: TextStyle(color: AppColors.black),
                      )),
                      Expanded(
                          child: Center(
                        child: Text(
                          ":",
                          style: TextStyle(color: AppColors.black),
                        ),
                      )),
                      Expanded(
                          child: Text(
                        modal.deliverycharge,
                        style: TextStyle(color: AppColors.black),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        "Total",
                        style: TextStyle(color: AppColors.black),
                      )),
                      Expanded(
                          child: Center(
                        child: Text(
                          ":",
                          style: TextStyle(color: AppColors.black),
                        ),
                      )),
                      Expanded(
                          child: Text(
                        modal.Total,
                        style: TextStyle(color: AppColors.black),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        "Payment",
                        style: TextStyle(color: AppColors.black),
                      )),
                      Expanded(
                          child: Center(
                        child: Text(
                          ":",
                          style: TextStyle(color: AppColors.black),
                        ),
                      )),
                      Expanded(
                          child: Text(
                        modal.paymentType,
                        style: TextStyle(color: AppColors.black),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Customer Details",
                style: TextStyle(
                    color: AppColors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(
                      "Name",
                      style: TextStyle(color: AppColors.black),
                    )),
                    Expanded(
                        child: Center(
                      child: Text(
                        ":",
                        style: TextStyle(color: AppColors.black),
                      ),
                    )),
                    Expanded(
                        child: Text(
                      modal.customerdetails.name,
                      style: TextStyle(color: AppColors.black),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(
                      "Mobile",
                      style: TextStyle(color: AppColors.black),
                    )),
                    Expanded(
                        child: Center(
                      child: Text(
                        ":",
                        style: TextStyle(color: AppColors.black),
                      ),
                    )),
                    Expanded(
                        child: Text(
                      modal.customerdetails.mobNo,
                      style: TextStyle(color: AppColors.black),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(
                      "Address",
                      style: TextStyle(color: AppColors.black),
                    )),
                    Expanded(
                        child: Center(
                      child: Text(
                        ":",
                        style: TextStyle(color: AppColors.black),
                      ),
                    )),
                    Expanded(
                        child: Text(
                      modal.customerdetails.address,
                      style: TextStyle(color: AppColors.black),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(
                      "PinCode",
                      style: TextStyle(color: AppColors.black),
                    )),
                    Expanded(
                        child: Center(
                      child: Text(
                        ":",
                        style: TextStyle(color: AppColors.black),
                      ),
                    )),
                    Expanded(
                        child: Text(
                      modal.customerdetails.pincode,
                      style: TextStyle(color: AppColors.black),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(
                      "City",
                      style: TextStyle(color: AppColors.black),
                    )),
                    Expanded(
                        child: Center(
                      child: Text(
                        ":",
                        style: TextStyle(color: AppColors.black),
                      ),
                    )),
                    Expanded(
                        child: Text(
                      modal.customerdetails.city,
                      style: TextStyle(color: AppColors.black),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(
                      "payment",
                      style: TextStyle(color: AppColors.black),
                    )),
                    Expanded(
                        child: Center(
                      child: Text(
                        ":",
                        style: TextStyle(color: AppColors.black),
                      ),
                    )),
                    Expanded(
                        child: Text(
                      modal.customerdetails.paymentType,
                      style: TextStyle(color: AppColors.black),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 40,
                width: width * 0.4,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Reject"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      foregroundColor: AppColors.white),
                ),
              ),
              SizedBox(
                height: 40,
                width: width * 0.4,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Accept"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.maincolor,
                      foregroundColor: AppColors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
