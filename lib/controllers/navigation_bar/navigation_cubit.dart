import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mvc/controllers/navigation_bar/navigation_state.dart';
import 'package:mvc/widgets/home_body.dart';

class NavigationCubit extends Cubit<NavigationState>{
  int myCurrentIndex = 0;
  PageController controller = PageController();
  bool _x = true;

  NavigationCubit() : super(InitNavigationState());

  void changeIndex(int value){
    myCurrentIndex = value;
      controller.animateToPage(
      value,
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
    );
    emit(ChangeIndexState());
  }
}