import 'package:kamaranacademy/Objects_Layer/LoginCredentials.dart';

class LogicLayerFunctionality {
  //------------------------------------------------------------//
  /// make this class a singleton
  factory LogicLayerFunctionality() {
    if (llf == null) {
      llf = LogicLayerFunctionality.createInstance();
    }
    return llf;
  }
  LogicLayerFunctionality.createInstance();
  static LogicLayerFunctionality llf;
//------------------------------------------------------------//

//------------------------------------------------------------//
  // if correct loginCredentials than return 0;
  // if incorrect loginCredentials than return 1;
  Future getVerifyLoginCredentials(LoginCredentials log) {
    return Future.delayed(Duration(seconds: 4), () {
      //return 1; //incorrect
      return 0; //correct
    });
  }
  //------------------------------------------------------------//

  //------------------------------------------------------------//
}
