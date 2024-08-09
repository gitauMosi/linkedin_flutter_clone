import 'package:flutter/material.dart';

class NotifacationPage extends StatelessWidget {
  const NotifacationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child:  Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Chip(
                      padding: const EdgeInsets.all(3),
                      backgroundColor: const Color.fromARGB(255, 4, 74, 7),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      label: const Text("All", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Chip(
                      padding: const EdgeInsets.all(3),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      label: const Text("My posts", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Chip(
                      padding: const EdgeInsets.all(3),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      label: const Text("Mentions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),), ),
                  ),
                ],
              ),
            ),
            const Divider(),
            notiTile(),
            const SizedBox(height: 3,),
            notiTile(),
            const SizedBox(height: 3,),
            notiTile(),
            const SizedBox(height: 3,),
            notiTile(),
            const SizedBox(height: 3,),
            notiTile(),
            const SizedBox(height: 3,),
            notiTile(),
            const SizedBox(height: 3,),
            notiTile(),
            const SizedBox(height: 3,),
            notiTile(),
            const SizedBox(height: 3,),
      
          ],
        ),
      ),
    );
  }

  Widget notiTile(){
    return   ListTile(

        contentPadding: const EdgeInsets.all( 2), 
        leading: const CircleAvatar(child: Text("T"),),
        title:  const Text("Dong m", style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: const Text("Posted: Beinga software developer can be challenging, and there are moments when giving up seems temp..", style: TextStyle(fontSize: 10),),
        trailing: Column(
          children: [
            const Text("2h", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
            Expanded(child: customPopMenu2()),
          ],
        )
    );
  }

  Widget customPopMenu2(){
    return PopupMenuButton<int>(
      iconSize: 16,
      itemBuilder: (context)=>[
        const PopupMenuItem(
          value: 1,
          child: Text('delete', style: TextStyle(fontSize: 13),)),
        const PopupMenuItem(
          value: 2,
          child: Text('Share', style: TextStyle(fontSize: 13),)),
        
      ]

      );
  }
}