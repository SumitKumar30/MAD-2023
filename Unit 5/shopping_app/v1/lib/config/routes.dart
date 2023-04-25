import 'package:flutter/cupertino.dart';
import 'package:shopping_app/screens/login.dart';
import 'package:shopping_app/screens/register.dart';
import 'package:shopping_app/utils/constants.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    ConstantRoutes.LOGIN_ROUTE: (context) => const Login(),
   
    ConstantRoutes.REGISTER_ROUTE: (context) => const Register(),
  };
}
