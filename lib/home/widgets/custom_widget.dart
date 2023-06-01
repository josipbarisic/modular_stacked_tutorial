import 'package:flutter/material.dart';
import 'package:modular_stacked_tutorial/home/home_viewmodel.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class CustomWidget extends StackedHookView<HomeViewModel> {
  @override
  Widget builder(BuildContext context, HomeViewModel viewModel) => Container(
        height: 50,
        width: 300,
        color: Colors.blue,
        child: Center(
          child: Text(
            'StackedHookView\'s Counter: ${viewModel.counter}',
          ),
        ),
      );
}
