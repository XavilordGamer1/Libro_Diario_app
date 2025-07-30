// lib/main.dart

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:libro_diario_app/config/router/app_router.dart';
import 'package:libro_diario_app/config/theme/app_theme.dart';
// Asegúrate de tener un archivo firebase_options.dart generado por FlutterFire CLI

Future<void> main() async {
  // Asegura que los bindings de Flutter estén inicializados
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa Firebase
  // Descomenta la siguiente línea cuando hayas configurado Firebase
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      title: 'Libro Diario App',
    );
  }
}
