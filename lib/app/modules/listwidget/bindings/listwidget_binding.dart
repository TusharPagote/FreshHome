import 'package:get/get.dart';

import '../controllers/listwidget_controller.dart';

class ListwidgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListwidgetController>(
      () => ListwidgetController(),
    );
  }
}
