import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:list_of_widget/dashboard_screen.dart';
import 'package:list_of_widget/widget/text_field_widget.dart';

class AppGoRouter {
  /// The route configuration.
  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const DashboardScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'textfieldwidget',
            builder: (BuildContext context, GoRouterState state) {
              return const TextFieldWidget();
            },
          ),
        ],
      ),
    ],
  );
}
