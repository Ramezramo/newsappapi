
import 'package:flutter/material.dart';
import 'package:newsapiproject/Features/home/presentation/views/widgets/resultsViewer.dart';
import 'package:newsapiproject/Features/home/presentation/views/widgets/searchWidget.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const Column(
      children: [
        TextFeilds(),
        theNewsListViewer(),

      ],
    );
  }
}
