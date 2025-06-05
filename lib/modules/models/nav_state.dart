import 'package:equatable/equatable.dart';

class NavState extends Equatable {
  const NavState({this.index = 0});

  final int index;
  int get totalPages => 4;

  NavState copyWith({int? index}) => NavState(index: index ?? this.index);

  @override
  List<Object?> get props => [index];
}
