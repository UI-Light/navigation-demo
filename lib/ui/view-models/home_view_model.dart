import 'package:demo/ui/handlers/navigation_handler.dart';
import 'package:demo/ui/routing/route.dart';

class HomeViewModel {
  void navigateToCardsView() {
    // Navigator.of(context).pushNamed(Routes.cardListViewRoute);
    NavigationHandler.instance.pushNamed(Routes.cardListViewRoute);
  }
}
