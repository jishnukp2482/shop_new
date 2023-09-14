import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_new/presentation/routes/App_Pages.dart';
import '../../manager/logincntlr.dart';
import '../../themes/app_colors.dart';
import '../../widgets/otp_textfirld.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final logincontroller = Get.find<LoginCntlr>();
  // final homecontroller = Get.find<Homectrl>();
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Verification",
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your OTP code number",
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtptextField(
                      controller: logincontroller.otpcntlr1, autoFocus: true),
                  OtptextField(
                      controller: logincontroller.otpcntlr2, autoFocus: false),
                  OtptextField(
                      controller: logincontroller.otpcntlr3, autoFocus: false),
                  OtptextField(
                      controller: logincontroller.otpcntlr4, autoFocus: false),
                  OtptextField(
                      controller: logincontroller.otpcntlr5, autoFocus: false),
                  OtptextField(
                      controller: logincontroller.otpcntlr6, autoFocus: false)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child:
                      //logincontroller.verifyOTPstate.value.status ==
                      //         Status.LOADING
                      //     ? SizedBox(
                      //         height: 40,
                      //         width: 20,
                      //         child: Center(
                      //           child: CircularProgressIndicator(),
                      //         ),
                      //       )
                      //     :
                      ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppPages.bottomnav);
                      // logincontroller.verifyOTP();
                    },
                    child: Text(
                      "Verify",
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
        ],
      ),
    ));
  }
}
