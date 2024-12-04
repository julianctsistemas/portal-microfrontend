import 'package:flutter/material.dart';

class MicrofrontendLoader {
  Widget load(String route) {
    // Simulación: Retorna un widget básico.
    if (route == "/shop") {
      return const Center(child: Text("Shop Microfrontend"));
    } else {
      return const Center(child: Text("Unknown Microfrontend"));
    }
  }
}
