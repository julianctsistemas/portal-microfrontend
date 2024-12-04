import 'dart:ui' as ui;
import 'dart:html'; // Para usar IFrameElement

void registerIframe() {
  // Registrar el primer iframe para el microfrontend 'shop'
  ui.platformViewRegistry.registerViewFactory(
    'iframe-shop',
    (int viewId) => IFrameElement()
      ..src = 'http://localhost:12345' // URL del primer microfrontend
      ..style.border = 'none'
      ..style.width = '100%' // Ajustar el tamaño
      ..style.height = '100%',
  );

  // Registrar el segundo iframe para el microfrontend 'coffeelover'
  ui.platformViewRegistry.registerViewFactory(
    'iframe-coffeelover', // Nombre único para el segundo iframe
    (int viewId) => IFrameElement()
      ..src = 'http://localhost:13579' // URL del segundo microfrontend
      ..style.border = 'none'
      ..style.width = '100%' // Ajustar el tamaño
      ..style.height = '100%',
  );

  ui.platformViewRegistry.registerViewFactory('iframe-checkout',
    (int viewId) => IFrameElement()
      ..src = 'http://localhost:24680' // URL del primer microfrontend
      ..style.border = 'none'
      ..style.width = '100%' // Ajustar el tamaño
      ..style.height = '100%',);
}
