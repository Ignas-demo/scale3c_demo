import '../../navigation.dart';

extension LoadingOverlayNavigation on AppRouter {
  Future<void> showLoadingOverlay() {
    return navigate(const LoadingOverlayRoute());
  }

  void hideLoadingOverlay() {
    removeWhere((route) => route.name == LoadingOverlayRoute.name);
  }
}
