import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; // Necesario para HtmlElementView

class PortalHome extends StatelessWidget {
  const PortalHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Portal Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Scaffold(
                appBar: AppBar(title: const Text('Microfrontends')),
                body: Column(
                  children: [
                    // Botón para abrir el iframe del Shop Microfrontend
                    ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Scaffold(
                            appBar: AppBar(title: const Text('Shop Microfrontend')),
                            body: const Center(
                              child: SizedBox(
                                width: 800,
                                height: 600,
                                child: HtmlElementView(viewType: 'iframe-shop'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      child: const Text('Open Shop Microfrontend'),
                    ),
                    // Botón para abrir el iframe del CoffeeLover Microfrontend
                    ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Scaffold(
                            appBar: AppBar(title: const Text('CoffeeLover Microfrontend')),
                            body: const Center(
                              child: SizedBox(
                                width: 800,
                                height: 600,
                                child: HtmlElementView(viewType: 'iframe-coffeelover'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      child: const Text('Open CoffeeLover Microfrontend'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: const Text('Open Microfrontends'),
        ),
      ),
    );
  }
}
