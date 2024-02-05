import 'package:etiya_flutter_assignment/screens/homePage/viewModel/cityCubit.dart';
import 'package:etiya_flutter_assignment/screens/map_page/view_model/mapCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDependencies extends StatelessWidget {
  /// The widget below this widget in the tree.
  final Widget child;

  const AppDependencies({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CityCubit>(
          create: (context) => CityCubit(),
        ),
        BlocProvider<MapCubit>(
          create: (context) => MapCubit(),
        ),
      ],
      child: child,
    );
  }
}
