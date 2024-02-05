
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        TextFeilds(),
        Padding(
          padding: const EdgeInsets.only(
              top: 15.0, left: 9, right: 9),
          child: Container(
            height: MediaQuery.of(context).size.height / 3.7,
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
              child: TextField(
                // controller: widget.messageSenderControllergg,
                onChanged: (value) {},
                maxLines: null,
                style: const TextStyle(color: Colors.white70),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'first search result will go here',
                  hintStyle: TextStyle(color: Colors.white70),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 15.0, left: 9, right: 9),
          child: Container(
            height: MediaQuery.of(context).size.height / 3.7,
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
              child: TextField(
                // controller: widget.messageSenderControllergg,
                onChanged: (value) {},
                maxLines: null,
                style: const TextStyle(color: Colors.white70),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Second search result will go here',
                  hintStyle: TextStyle(color: Colors.white70),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class TextFeilds extends StatelessWidget {
  const TextFeilds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                style: TextStyle(fontSize: 16.0),
                decoration: InputDecoration(
                  labelText: 'First Search',
                  hintText: 'Type Second Search',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                ),
              ),
              SizedBox(height: 16.0), // Add some spacing between the text fields
              TextField(
                style: TextStyle(fontSize: 16.0),
                decoration: InputDecoration(
                  labelText: 'Second Search',
                  hintText: 'Type Second Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0), // Add more spacing
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Search',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

