import 'package:flutter/material.dart';

class AddPostPage extends StatelessWidget {
  const AddPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController postController = TextEditingController();
    return Scaffold(
    body: Container(
      color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child:  TextField(
         controller: postController,
         style: const TextStyle(fontSize: 14),
         keyboardType: TextInputType.multiline,
         maxLines: 100,
         decoration: const InputDecoration(
          hintText: "Share your thoughts",
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          )
         ),
      ),
    )
    );
  }
  
}