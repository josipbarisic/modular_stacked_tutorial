// ignore_for_file: avoid_renaming_method_parameters, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:modular_stacked_tutorial/home/home_viewmodel.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class CounterWidget extends StackedHookView<HomeViewModel> {
  @override
  Widget builder(BuildContext context, HomeViewModel viewModel) {
    return Text(
      '${viewModel.counter}',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
