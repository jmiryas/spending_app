import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../routes/app_router.dart';
import '../simple_bloc_observer.dart';
import '../routes/custom_app_route.dart';
import '../bloc/category/category_bloc.dart';
import '../bloc/spending/spending_bloc.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CategoryBloc()
              ..add(
                CategoryStartedEvent(),
              ),
          ),
          BlocProvider(
            create: (context) => SpendingBloc()
              ..add(
                SpendingStartedEvent(),
              ),
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Spending App",
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: CustomAppRoute.homeScreen,
        ));
  }
}
