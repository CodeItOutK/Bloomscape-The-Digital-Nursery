import 'package:bloomscape/blocs/basket/basket_event.dart';
import 'package:bloomscape/blocs/nursery/nursery_bloc.dart';
import 'package:bloomscape/config/app_router.dart';
import 'package:bloomscape/pages/Landing_Page.dart';
import 'package:bloomscape/pages/authentication/logIn_full.dart';
import 'package:bloomscape/repositories/nursery/nursery_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'H_lib/lib/blocs/filters/filters_bloc.dart';
import 'H_lib/lib/blocs/filters/filters_event.dart';
import 'H_lib/lib/blocs/filters/filters_state.dart';
import 'attributes/Theme.dart';
import 'blocs/basket/basket_bloc.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<NurseryRepository>(
          create: (context)=> NurseryRepository(),

        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => BasketBloc()
                ..add(
                  StartBasket(),
                )),
          BlocProvider(create: (context)=>
            NurseryBloc(nurseryRepository: context.read<NurseryRepository>(),
            ),
          ),

          // BlocProvider(
          //   create: (context) => FiltersBloc(
          //     NurseryBloc: context.read<NurseryBloc>(),
          //   )..add(FilterLoad()),
          // ),

          // BlocProvider(create: (context)=>
          //     FiltersBloc()..add(FilterLoad()),
          //     ),

        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: theme(),
          home: LoginPage(),
          onGenerateRoute: AppRouter.OnGenerateRoute,
          // initialRoute: LoginPage.routeName,
          initialRoute: '/login',
          // initialRoute: '/order_confirm',


          // onGenerateRoute: RouteGenerator.generateRoute,

        ),
      ),
    );

  }
}




/*og main.dart simle bef bloc used

import 'package:bloomscape/config/app_router.dart';
import 'package:bloomscape/pages/Home_page.dart';
import 'package:bloomscape/pages/Landing_Page.dart';
import 'package:bloomscape/pages/log_in.dart';
import 'package:bloomscape/pages/nursery_detail_screen.dart';
import 'package:flutter/material.dart';

import 'attributes/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: LandingPage(),
      onGenerateRoute: AppRouter.OnGenerateRoute,
      // onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: LoginPage.routeName,
    );
  }
}


 */

