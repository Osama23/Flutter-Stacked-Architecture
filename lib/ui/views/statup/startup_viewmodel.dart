import 'package:flutter_stacked_unit_testing/app/locator.dart';
import 'package:flutter_stacked_unit_testing/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  String _title = "Home View";

  String get title => _title;

  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeView);
  }
}