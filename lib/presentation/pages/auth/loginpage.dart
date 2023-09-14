import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shop_new/presentation/routes/App_Pages.dart';

import '../../themes/app_colors.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Shop the Future: Elevate Your Retail Experience",
                    style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10, top: 15),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                        color: AppColors.black, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: IntlPhoneField(
                    // controller: loginController.loginphoneNocontroller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      fillColor: AppColors.backgroundcolor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                        color: AppColors.greyText,
                        width: 0.3,
                      )),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.blue,
                          width: 0.3,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      disabledBorder: const OutlineInputBorder(),
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                        color: AppColors.greyText,
                        width: 0.3,
                      )),
                    ),
                    initialCountryCode: "IN",
                    onChanged: (value) {
                      // loginController.completeLoginPhoneNo.value =
                      //     value.completeNumber;

                      // print(value.completeNumber);
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // const CustomTextField(
                //   hintText: "Password",
                //   label: Text("Password"),
                //   passwordfield: true,
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child:
                  // Obx(
                  // () => loginController.loginOtpPhoneNostate.value.status ==
                  //         Status.LOADING
                  //     ? SizedBox(
                  //         height: 40,
                  //         width: 20,
                  //         child: Center(child: CircularProgressIndicator()))
                  //     :
                  ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppPages.otpscreen);
                  //loginController.generateLoginOtp();
                },
                child: Text(
                  "Continue",
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.maincolor,
                    foregroundColor: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
