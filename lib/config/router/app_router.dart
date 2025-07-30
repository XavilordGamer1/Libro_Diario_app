// lib/config/router/app_router.dart

import 'package:go_router/go_router.dart';
import 'package:libro_diario_app/features/2_libro_diario/presentation/screens/home_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      // --- Pantallas Principales ---
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      // Aquí añadiremos más rutas para login, crear asiento, reportes, etc.
    ],
  );
}
