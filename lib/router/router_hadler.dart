import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:vitalfon_web/providers/page_provider.dart';
import 'package:vitalfon_web/ui/pages/home_page.dart';

final homeHandler = Handler(handlerFunc: (context, parameters) {
  final page = parameters['page']!.first;
  if (page != '/') {
    final pageProvider = Provider.of<PageProvider>(context!, listen: false);
    pageProvider.createScrollControlller(page);
    return const HomePage();
  }
  return null;
});
