import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_new/presentation/themes/app_colors.dart';
import 'package:shop_new/presentation/widgets/customtextfiled.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Product",
          style: TextStyle(color: AppColors.white),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.white,
            )),
        centerTitle: true,
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
                  hintText: "Product Name", label: Text("Product Name")),
              SizedBox(
                height: 10,
              ),
              CustomTextField(hintText: "Add tag", label: Text("Add tag")),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hintText: "Product Category",
                  label: Text("Product Category")),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hintText: "Product Sub Category",
                  label: Text("Product Sub Category")),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomTextField(
                          hintText: "Price", label: Text("Price"))),
                  Expanded(
                      child: CustomTextField(
                          hintText: "Discounted Price",
                          label: Text("Discounted Price"))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomTextField(
                          hintText: "Product Unit",
                          label: Text("Product Uni"))),
                  Expanded(
                    child: DropdownSearch<String>(
                      //  autoValidateMode: AutovalidateMode.always,
                      validator: (value) {
                        if (value == null) {
                          return "Required Field";
                        }
                        return null;
                      },
                      //itemAsString: (item) => item.brName,
                      enabled: true,
                      popupProps: const PopupProps.menu(fit: FlexFit.loose),
                      items: ["1", "2"],
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          isDense: false,
                          labelText: "Piece",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.greyText,
                            width: 0.3,
                          )),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.blue,
                            width: 0.3,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: AppColors.greyText,
                            width: 0.3,
                          )),
                          disabledBorder: OutlineInputBorder(),
                          hintText: "select",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          contentPadding: EdgeInsets.all(15),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hintText: "Description", label: Text("Description")),
              SizedBox(
                height: 10,
              ),
              CustomTextField(hintText: "features", label: Text("features")),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hintText: "Stock Count", label: Text("Stock Count")),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Submit"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.maincolor,
                      foregroundColor: AppColors.white),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
