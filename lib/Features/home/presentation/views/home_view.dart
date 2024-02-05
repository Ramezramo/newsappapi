import 'package:flutter/material.dart';
import 'package:newsapiproject/Features/home/presentation/views/widgets/homeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
