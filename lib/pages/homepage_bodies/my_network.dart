
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MynetworkPage extends StatelessWidget {
  const MynetworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
       // width: double.infinity,
        color: Colors.white60,
        child: Column(
          children: [
            const SizedBox(height: 10,),
             Container(
              //width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 3,),
                  const Text("Manage my network", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
                  const Spacer(),
                  GestureDetector(child: const Icon(Icons.arrow_forward)),
                  const SizedBox(width: 5,),
                ],
              ),
            ),
             Container(
              height: 10,
              color: Colors.grey,
             ),
            Container(
              //width: double.infinity,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 3,),
                  const Text("Invitations (2)", style: TextStyle(color: Colors.black54),),
                  const Spacer(),
                  GestureDetector(child: const Icon(Icons.arrow_forward)),
                  const SizedBox(width: 5,),
                ],
              ),
            ),
           
           Column(children: [
            customTile(context),
            const SizedBox(height: 3,),
            customTile(context),
            const Divider(height: 3,),
            premiumDialog(context),
            //gridView(),
           ],)
          ],
        ),
      ),
    );
  }



  Widget customTile(BuildContext context){
    return Container(
      color: const Color.fromARGB(255, 188, 209, 244),
      padding: const EdgeInsets.only(bottom: 16, top: 6),
      margin: const EdgeInsets.only(top: 1, left: 2, right: 2, bottom: 3),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const SizedBox(width: 4,),
          GestureDetector(child: const CircleAvatar(child: Text("B"),)),
          const SizedBox(width: 4,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text("SVC ENERGY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            const  Text("Founder/CEO @ Studia Lab...", style: TextStyle(color: Colors.grey, fontSize: 11),),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "()",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 11)
                    ),
                    TextSpan(
                      text: " 3 mutual connections",
                      style: TextStyle(color: Colors.grey, fontSize: 11)
                    )
                  ]
                )),
               const Text("Yesterday", style: TextStyle(fontSize: 11),)
            ],
          ),
          const Spacer(),
         const Row(
            children: [
                   Icon(Icons.cancel_outlined, size: 35,),
                   SizedBox(width: sqrt1_2,),
                   Icon(Icons.check_circle_outline, color: Colors.blueAccent, size: 35,),
                   SizedBox(width: 3,)
            ],
          )
        ],
      ),
    );
  }
  Widget premiumDialog(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(221, 211, 211, 211)
      ),
      width: MediaQuery.of(context).size.width,
      height: 200,
     // color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 3,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                    const Text("Achieve your goals faster with premium", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                   const Text("See who's viewed your profile and directly message members outside of your network."),
                    const SizedBox(height: 6,),
                     Row(
                      children: [
                       
                       customCircleAvatar(),
                        const SizedBox(width: 4,),
                        const Expanded(child: Text("Mark and millions of others members use Premium")),            
                      ],
                    ),
                   const Padding(
                      padding:  EdgeInsets.only(left: 42),
                      child:  Text("Yesterday"),
                    ),
                    const SizedBox(height: 10,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 42),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.amber
                          ),
                          onPressed: (){}, child: const Text("Try Premium for KES0")),
                      ),
                    ),
              ],
            ),
          ),
          const Padding(
            padding:  EdgeInsets.all(10),
            child:  Icon(Icons.close, size: 25,),
          )
        ],
      ),
    );
  }
  Widget customCircleAvatar(){
    return  Container(
    width: 20,
    height: 20,
    decoration: const BoxDecoration(
      color: Colors.blue,
      shape: BoxShape.circle,
      //image: DecorationImage(image: NetworkImage("url"), fit: BoxFit.cover),
    ),
    child: const Center(child:  Text("C")),
          );
  
  }

  // Widget gridView(){
  //   return Container(
  //     child: Column(
  //       children: [
  //         Text("Based in your recent Activity"),
  //         Row(
  //           children: [

  //           ],
  //         )
  //       ],
  //     ),

  //   );
  // }
  // Widget customContainer() {
  //   return Container(
  //     decoration V
  //   );
  // }
}
