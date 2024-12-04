import 'package:flutter/material.dart';
import 'package:portal/presentation/screens/portal_home.dart';
import 'package:portal/utils/iframe_registry.dart'; // Importa la función registerIframe

void main() {
  registerIframe(); // Registra los iframes antes de iniciar la app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal',
      debugShowCheckedModeBanner: false, // Quita el banner DEBUG
      home: const PortalHome(),
    );
  }
}
