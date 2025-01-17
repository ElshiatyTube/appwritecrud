import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/clients/appwrite_client.dart';
import '../../../data/repositories/item_repository.dart';
import '../../ui/cubits/home_cubit.dart';
import '../../ui/screens/home_screen.dart';

/// A class that defines the routes used in the application.
class Routes {
  static const String homeScreen = "/";
}

/// A class responsible for generating routes based on the route settings and injecting dependencies into the screens.
class RouteGenerator {
  /// Returns a `Route` based on the provided `RouteSettings`.
  ///
  /// \param routeSettings The settings for the route.
  /// \return A `Route` corresponding to the route name in the settings, or `null` if no matching route is found.
  static Route? getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => RepositoryProvider(
            create: (_) => ItemRepository(AppwriteClient()),
            child: BlocProvider(
              create: (context) => HomeCubit(context.read<ItemRepository>()),
              child: const HomeScreen(),
            ),
          ),
          settings: routeSettings,
        );
    }
    return null;
  }
}
