import 'package:flutter/material.dart';

class PortalHome extends StatelessWidget {
  const PortalHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Portal Empresarial',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Portal Empresarial',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Gestión de microfrontends',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            _buildDrawerTile(
              context,
              icon: Icons.shop,
              title: 'Shop Microfrontend',
              viewType: 'iframe-shop',
            ),
            _buildDrawerTile(
              context,
              icon: Icons.coffee,
              title: 'CoffeeLover Microfrontend',
              viewType: 'iframe-coffeelover',
            ),
            _buildDrawerTile(
              context,
              icon: Icons.credit_card,
              title: 'CheckOut Microfrontend',
              viewType: 'iframe-checkout',
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.tealAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '¡Bienvenido al Portal!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              _buildFeatureCard(
                context,
                icon: Icons.shop,
                title: 'Shop Microfrontend',
                subtitle: 'Gestión de tienda',
                viewType: 'iframe-shop',
              ),
              const SizedBox(height: 16),
              _buildFeatureCard(
                context,
                icon: Icons.coffee,
                title: 'CoffeeLover Microfrontend',
                subtitle: 'Explorar cafeterías',
                viewType: 'iframe-coffeelover',
              ),
              const SizedBox(height: 16),
              _buildFeatureCard(
                context,
                icon: Icons.credit_card,
                title: 'CheckOut Microfrontend',
                subtitle: 'Gestión de pagos',
                viewType: 'iframe-checkout',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para una opción del Drawer
  Widget _buildDrawerTile(BuildContext context,
      {required IconData icon, required String title, required String viewType}) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(title),
      onTap: () => _navigateToMicrofrontend(context, title, viewType),
    );
  }

  // Widget para una tarjeta de microfrontend
  Widget _buildFeatureCard(BuildContext context,
      {required IconData icon,
      required String title,
      required String subtitle,
      required String viewType}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, size: 40, color: Colors.teal),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward, color: Colors.teal),
        onTap: () => _navigateToMicrofrontend(context, title, viewType),
      ),
    );
  }

  // Navegación a un microfrontend
  void _navigateToMicrofrontend(BuildContext context, String title, String viewType) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text(title),
            backgroundColor: Colors.teal,
          ),
          body: Center(
            child: SizedBox(
              width: 800,
              height: 600,
              child: HtmlElementView(viewType: viewType),
            ),
          ),
        ),
      ),
    );
  }
}
