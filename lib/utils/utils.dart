import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  print(response.body);
  switch (response.statusCode) {
    case 200 || 201:
      onSuccess();
      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body)["message"][0]);
      break;
    case 401 || 409:
      showSnackBar(context, jsonDecode(response.body)["message"]);
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body).toString());
      break;
    default:
      showSnackBar(context, response.body);
  }
}
