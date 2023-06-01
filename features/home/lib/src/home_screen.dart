import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        appRouter: getIt<AppRouter>(),
      ),
      child: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatefulWidget {
  const _HomeScreen();

  @override
  State<_HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      color: AppColors.of(context).white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Home',
              style: AppFonts.robotoBold18
                  .copyWith(color: AppColors.of(context).black),
            ),
            ActionButton(
              height: screenHeight * 0.1,
              width: screenWidth * 0.5,
              onPressed: () {
                context.read<HomeBloc>().routeToProfile();
              },
              child: Text(
                'Profile',
                style: AppFonts.ubuntuMedium24
                    .copyWith(color: AppColors.of(context).black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
