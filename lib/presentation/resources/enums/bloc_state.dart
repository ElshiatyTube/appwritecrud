import 'package:equatable/equatable.dart';

import 'bloc_ui_state.dart';

/// An abstract class representing the state of a Bloc with a generic data type [D].
abstract class BlocState<D> extends Equatable{
  final BlocUiState state;
  final Object? error;
  const BlocState({required this.state, this.error});

  D? getData();

  @override
  String toString() => '$runtimeType { state: $state}';
}

