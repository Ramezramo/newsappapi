import 'package:flutter/material.dart';
class theNewsListViewer extends StatelessWidget {
  const theNewsListViewer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 15.0, left: 9, right: 9),
          child: Container(
            height: MediaQuery.of(context).size.height / 3.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color:Colors.purpleAccent,
              border: Border.all(
                color: Colors.white,
                width: 0.6,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                // controller: widget.messageSenderControllergg,
                "first search result will go here"
               ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
              top: 15.0, left: 9, right: 9),
          child: Container(
            height: MediaQuery.of(context).size.height / 3.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              border: Border.all(
                color: Colors.white,
                width: 0.6,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
    // controller: widget.messageSenderControllergg,
    "Second search result will go here"
    ),
            ),
          ),
        )

      ],
    );
  }
}

