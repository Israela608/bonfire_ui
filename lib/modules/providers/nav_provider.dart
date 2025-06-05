import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stroll_demo/modules/models/nav_state.dart';
import 'package:stroll_demo/modules/notifiers/nav_notifier.dart';

final navProvider =
    StateNotifierProvider<NavNotifier, NavState>((ref) => NavNotifier());

// Just for the 'index' state
final navIndexProvider = Provider<int>((ref) => ref.watch(navProvider).index);
