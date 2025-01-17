import 'package:appwritecrud/presentation/resources/enums/bloc_ui_state.dart';
import 'package:appwritecrud/presentation/resources/managers/color_manager.dart';
import 'package:appwritecrud/presentation/resources/managers/text_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/managers/values_manager.dart';
import '../cubits/home_cubit.dart';
import '../widgets/list_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0.r),
          alignment: Alignment.center,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if(state.state == BlocUiState.success){
                return ListView.separated(
                    itemCount: state.items.length,
                    separatorBuilder: (context,index){
                      return SizedBox(height: AppSize.s20.h,);
                    },
                    itemBuilder: (context,index){
                      final item = state.items[index];
                      return ListTileWidget(
                        title: Text(item.title),
                        subtitle:Text(item.description),
                      );
                    }
                );
              }
              if(state.state == BlocUiState.error){
                return Text(state.error.toString());
              }
              if(state.state == BlocUiState.loading){
                return CircularProgressIndicator();
              }
              return ElevatedButton(
                onPressed: () {
                  HomeCubit.get(context).findAllItems();
                },
                child: Text(
                  TextManager.loadData,
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: ColorManager.white),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
