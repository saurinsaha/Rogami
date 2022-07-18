import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:rogami_rogami/controllers/firebase_client_controller.dart';

class InstanceBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<FirebaseClientController>(() => FirebaseClientController());
  }

}