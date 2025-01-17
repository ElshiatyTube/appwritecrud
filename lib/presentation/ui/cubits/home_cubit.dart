import 'package:appwritecrud/core/utils/utilities.dart';
import 'package:appwritecrud/data/models/item.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/repositories/item_repository.dart';
import '../../resources/enums/bloc_state.dart';
import '../../resources/enums/bloc_ui_state.dart';

part 'home_state.dart';

/// A Cubit class for managing the state of the Home feature.
class HomeCubit extends Cubit<HomeState> {
  final ItemRepository _repository;

  HomeCubit(this._repository) : super(HomeState.initial());

  static HomeCubit get(context) => BlocProvider.of(context);

  String get className => 'HomeCubit';

  void findAllItems() async {
    try {
      emit(state.copyWith(state: BlocUiState.loading));
      final items = await _repository.findAll();
      emit(state.copyWith(items: items, state: BlocUiState.success));
    } catch (e) {
      printDebug('Error $className findAllItems: $e');
      emit(state.copyWith(state: BlocUiState.error, error: e));
    }
  }
}
