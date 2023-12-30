import 'package:bloomscape/models/models.dart';
import 'package:bloomscape/pages/Home_page.dart';
import 'package:bloomscape/pages/last_confirm_order.dart';
import 'package:bloomscape/pages/nursery_detail_screen.dart';
import 'package:bloomscape/pages/nursery_listing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloomscape/pages/M_screens/screens.dart';
import '../H_lib/lib/Filter/filter_screen.dart';
import '../pages/Landing_Page.dart';
import '../pages/authentication/logIn_full.dart';
import '../pages/authentication/signIn_full.dart';

class AppRouter{
  static Route<dynamic> OnGenerateRoute(RouteSettings settings){
    print("The Route is: ${settings.name}");

    switch(settings.name){
      // cas/

      // case '/home':
      //   return HomePage.route();
      case HomePage.routeName:
        return HomePage.route();
      //
      case '/login':
        return LoginPage.route();

      case '/signin':
        return SignInPage.route();

      case '/landing':
        return LandingPage.route();

      case '/order_confirm':
        return OrderConfirmed.route();

      case NurseryDetailsScreen.routeName:
        return NurseryDetailsScreen.route(
          nursery:settings.arguments as Nursery
        );

      case '/nursery_listing':
        return NurseryListingPage.route(nurseries: settings.arguments as List<Nursery>);

        //M's code
      // case FilterScreen.routeName:
      //   return FilterScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case EditBasketScreen.routeName:
        return EditBasketScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();

      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.Route();

      case CheckoutScreen.routeName:
        return CheckoutScreen.Route();

      //H's code-
      // case FilterScreen.routeName:
      //   return FilterScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(appBar: AppBar(title: Text("Error"),),),
    settings: RouteSettings(name: '/error'),);
  }

}