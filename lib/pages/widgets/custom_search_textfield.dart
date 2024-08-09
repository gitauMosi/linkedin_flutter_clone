import 'package:flutter/material.dart';

Widget customSearchTextField(TextEditingController controller){
  return TextField(
    controller: controller,
    decoration:  InputDecoration(
      prefixIcon: const Icon(Icons.search, size: 16,),
      hintText: "Search",
      fillColor: const Color.fromARGB(255, 234, 233, 233),
      filled: true,
      hintStyle: const TextStyle(fontSize: 13,),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide.none
      )
    ),
  );
}