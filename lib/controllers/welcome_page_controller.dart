import 'package:get/get.dart';
import 'package:rogami_rogami/views/admin_login_page.dart';
import 'package:rogami_rogami/views/client_login_page.dart';
import 'package:rogami_rogami/views/staff_login_page.dart';

class WelcomePageController extends GetxController {
  var selectedUser = "".obs;

  onChangeUser(var user) {
    selectedUser.value = user;
    print(user);
  }

  // ignore: non_constant_identifier_names
  selection_of_next_login_screen() {
    if (selectedUser.value == 'Admin') {
      Get.to(() => AdminLoginPage());
    } else if (selectedUser.value == 'Staff') {
      Get.to(() => StaffLoginPage());
    } else {
      Get.to(() => ClientLoginPage());
    }
  }
}
