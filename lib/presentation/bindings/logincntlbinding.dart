import 'package:get/get.dart';
import 'package:shop_new/presentation/manager/logincntlr.dart';

class Logincntlrbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginCntlr());
  }
}
