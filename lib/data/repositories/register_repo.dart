import 'dart:convert';

import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/register/register_model.dart';
import '../data_source/remote/api_client.dart';
import '../data_source/remote/api_endpoints_urls.dart';

class RegisterRepo extends ApiClient {
  RegisterRepo();

  Future<RegisterModel> fetchregisterOtp(
      String mobile, String sourceserviceId, context) async {
    Map body = {"mobile": mobile, "sourceServiceId": sourceserviceId};
    try {
      final resposne = await postRquest(
          path: ApiEndPointsUrls.otpsent, body: body, isTokenRequired: false);

      if (resposne.statusCode == 200) {
        final resposneData = registerModelFromJson(jsonEncode(resposne.data));
        Vx.log(resposneData);
        // print(body);
        VxToast.show(context, msg: "Successfully Logged In! ");
        //print(body);
        return resposneData;

        // Vx.log(resposne.data);
      } else {
        RegisterModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      Vx.log(e);

      RegisterModel();
    }
    return RegisterModel();
  }
}
