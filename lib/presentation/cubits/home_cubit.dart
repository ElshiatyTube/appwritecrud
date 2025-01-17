import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/repositories/item_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ItemRepository _repository;
  HomeCubit(this._repository) : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
}
