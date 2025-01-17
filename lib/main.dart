import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'core/app.dart';
import 'core/utils/bloc_observer.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}