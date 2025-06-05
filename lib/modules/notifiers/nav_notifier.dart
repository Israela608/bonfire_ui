import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stroll_demo/modules/models/nav_state.dart';

class NavNotifier extends StateNotifier<NavState> {
  // Calling NavState() here will call the constructor of the NavState class, and we know that it initializes the NavState
  NavNotifier() : super(const NavState());

  initialize() {
    state = const NavState();
  }

  set currentPosition(int selectedIndex) {
    state = state.copyWith(index: selectedIndex);
  }

  void toHomePage() {
    state = state.copyWith(index: 0);
  }
}
