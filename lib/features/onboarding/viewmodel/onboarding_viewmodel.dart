part of "../view/onboarding_view.dart";

class _OnboardingViewModel {
  void goHome(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeView(),
        ));
  }
}
