import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class InheritedDependency extends InheritedWidget {
  final GetIt _getIt;

  const InheritedDependency({Key? key, required Widget child, required GetIt getIt})
      : _getIt = getIt,
        super(key: key, child: child);

  static InheritedDependency of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedDependency>()!;
  }

  GetIt get serviceLocator => _getIt;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
