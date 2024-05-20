import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:techtackdatasub/features/authentication/models/user_models.dart';
import 'dart:convert';
import 'package:techtackdatasub/navigation_menu.dart';
import 'package:techtackdatasub/utils/constants/api_constants.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  final user = UserModel().obs;

  Future<void> login(String username, String password) async {
    isLoading(true);

    try {
      // const String apiUrl = 'https://easyconnect.ng/api/app/adex/secure/login';
      // const String adexDeviceKey =
      //     '62ade2d3ssbsub76768758585985rereteyeyedcom937fa3955555555555555';

      final response = await http.post(
        Uri.parse(APIConstants.apiUrl),
        headers: {
          'Authorization': APIConstants.adexDeviceKey,
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'username': username,
          'password': password,
          'adex_check': APIConstants.adexCheck,
        }),
      );

      if (response.statusCode == 200) {
        // If authentication is successful, navigate to the home screen
        // For simplicity, let's assume login is successful
        final Map<String, dynamic> responseData = json.decode(response.body);
        final UserModel loggedInUser = UserModel.fromJson(responseData['user']);
        final String token = responseData['token'];
        GetStorage().write('token', token);
        GetStorage().write('user', json.encode(loggedInUser.toJson()));

        user.value = loggedInUser;

        // print(responseData);
        Get.offAll(() => const NavigationMenu());
      } else {
        // If authentication fails, display an error message to the user
        Get.snackbar('Error', 'Failed to authenticate. Please try again.');
      }

      // Clear loading state
      isLoading(false);
    } catch (e) {
      // Handle login error
      // print('Login error: $e');
      // Clear loading state
      isLoading(false);
    }
  }

  bool get isLoggedIn => GetStorage().hasData('token');

  void logout() {
    GetStorage().remove('token');
    GetStorage().remove('user');
    // Get.offAllNamed(
    //     '/login'); // Assuming '/login' is the route to your login screen
  }
}
