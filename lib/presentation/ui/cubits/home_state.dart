part of 'home_cubit.dart';

/// A state class for the Home feature, extending [BlocState] with a list of [Item]s.
@immutable
final class HomeState extends BlocState<List<Item>> {
  /// The list of items in the state.
  final List<Item> items;

  /// Creates an instance of [HomeState].
  ///
  /// \param items The list of items in the state.
  /// \param state The UI state of the bloc.
  /// \param error The error object, if any.
  const HomeState({this.items = const [], super.state = BlocUiState.idle, super.error});

  /// Factory constructor to create an initial [HomeState].
  factory HomeState.initial() => HomeState();

  /// Returns a list of properties used for equality comparison.
  ///
  /// \return A list containing the items and the UI state.
  @override
  List<Object?> get props => [items, super.state];

  /// Retrieves the data (items) from the state.
  ///
  /// \return A list of items.
  @override
  List<Item>? getData() {
    return items;
  }

  /// Creates a copy of the current [HomeState] with updated properties.
  ///
  /// \param items The new list of items.
  /// \param state The new UI state.
  /// \param error The new error object.
  /// \return A new instance of [HomeState] with the updated properties.
  HomeState copyWith({
    List<Item>? items,
    BlocUiState? state,
    Object? error,
  }) {
    return HomeState(
      items: items ?? this.items,
      state: state ?? this.state,
      error: error ?? this.error,
    );
  }
}