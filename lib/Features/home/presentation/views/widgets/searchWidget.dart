import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../manger/apiHandler/api_service.dart';

void apiText(yourSearchKeyword1,yourSearchKeyword2) async{
  Dio dio = Dio();

  // Create an instance of ApiService with the desired search keywords.
  ApiService apiService = ApiService(dio, yourSearchKeyword1, yourSearchKeyword1);

  try {
    // Call the get1 method and specify the endpoint if needed.
    Map<String, dynamic> result = await apiService.get1(endPoint: '/your-endpoint');

    // Do something with the result.
    print(result);
  } catch (error) {
    // Handle errors.
    print('Error: $error');
  }
}
TextEditingController textEditingController1 = TextEditingController();
TextEditingController textEditingController2 = TextEditingController();
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
                controller: textEditingController1,
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
                controller: textEditingController2,
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
                  child: TextButton(onPressed: (){
                    apiText(textEditingController1.text,textEditingController2.text);
                  }, child: Text("search")),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
