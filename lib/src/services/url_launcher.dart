import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

///[launchBrowserWebView] Abre o link dentro do App em uma janela webview
Future launchBrowserWebView(url, {Map<String, String>? headers}) async {
  final Uri uri = Uri.parse(url);

  (await canLaunchUrl(uri))
      ? await launchUrl(
          uri,
          mode: LaunchMode.inAppWebView,
          webViewConfiguration: WebViewConfiguration(
            headers: headers ?? {},
            enableDomStorage: true,
            enableJavaScript: true,
          ),
          webOnlyWindowName: "_blank",
        )
      : throw "Não foi possível abrir a url: $uri";
}

///[launchBrowserDefault] Abre o link em um navegador externo
Future launchBrowserDefault(url) async {
  final Uri uri = Uri.parse(url);

  (await canLaunchUrl(uri))
      ? await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
          webOnlyWindowName: "_blank",
        )
      : throw "Não foi possível abrir a url: $uri";
}

///[launchBrowserWebViewBySystem] Abre o link dentro do App em uma janela webview
///com possibilidade de links diferentes para plataformas Android e iOS
Future launchBrowserWebViewBySystem(
    {String? iOSUrl, String? androidUrl, String? webUrl}) async {
  if (defaultTargetPlatform == TargetPlatform.iOS &&
      iOSUrl != null &&
      iOSUrl.isNotEmpty) {
    await launchBrowserWebView(iOSUrl);
  }
  if (defaultTargetPlatform == TargetPlatform.android &&
      androidUrl != null &&
      androidUrl.isNotEmpty) {
    await launchBrowserWebView(androidUrl);
  }
  if (kIsWeb && webUrl != null && webUrl.isNotEmpty) {
    await launchBrowserWebView(webUrl);
  }
}
