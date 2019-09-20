import 'dart:convert';

import 'package:http/http.dart';

//All Mock url requests from Here https://reqres.in/

class  HttpRequestCalls {

  postApiCall(String url, Map<String, dynamic> body, [dynamic headers, Encoding encoding]) async{
    //if  need to add headers to the request add it here
    // final headers = {'Content-Type': 'application/json'};

    //Build body and add <key,values>
     /*{ "email": "eve.holt@reqres.in",
      "password": "cityslicka"};
*/
    //if  need to encode the body do it as below
    // String jsonBody = json.encode(body);

    //if needs to send  encoding type like  UTF or... to server
    // final encoding = Encoding.getByName('utf-8');

    if (url != null) {
      Response response = await post(
          url,
        // to ad headers to the request uncomment this line
          headers: headers ?? null,
          body: body ?? null ,
          // if your api needs to receive jsonBody in encoded just uncomment and  use : jsonBody

          // encoding
          encoding: encoding ?? null
      );

      int statusCode = response.statusCode;
      String responseBody = response.body;

      print("statusCode =" + statusCode.toString());
      if (statusCode == 200) {
        print("Successfull call");
      } else {
        print("Error something went wrong");
      }
      print("responseBody = " + responseBody);
    }
  }


  getApiCall(String url, [dynamic headers]) async{
    //if  need to add headers to the request add it here
    // final headers = {'Content-Type': 'application/json'};
    if (url != null) {
      Response response = await get(
          url,
          // to ad headers to the request uncomment this line
          headers: headers ?? null,
          // if your api needs to receive jsonBody in encoded just uncomment and  use : jsonBody
      );

      int statusCode = response.statusCode;
      String responseBody = response.body;

      print("statusCode =" + statusCode.toString());
      if (statusCode == 200) {
        print("Successfull call");
      } else {
        print("Error something went wrong");
      }
      print("responseBody = " + responseBody);
    }
  }

}

