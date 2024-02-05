import 'package:flutter/material.dart';



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
