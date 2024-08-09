import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(2),
        color: Colors.transparent,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.white,
              child:  Row(
                children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Chip(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: const EdgeInsets.all(3),
                    label: const Text("My Jobs", style: TextStyle(fontWeight: FontWeight.bold),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Chip(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: const EdgeInsets.all(4),
                    label: const Text("Preferences", style: TextStyle(fontWeight: FontWeight.bold),)),
                ),
                Expanded(
                  child: Chip(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: const EdgeInsets.all(4),
                    label: const Text("Post a free job", style: TextStyle(fontWeight: FontWeight.bold),)),
                ),
              ],),
            ),
      
            Column(
              children: [
                Container(
            width: double.infinity,
            height: 10,
            color: const Color.fromARGB(255, 230, 230, 230),
                      ),
                      Container(
            padding: const EdgeInsets.only(left: 5),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Padding(
                 padding:  EdgeInsets.all(10.0),
                 child:   Text("Tob job picks for you", style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
               ),
               customJobTile(),
               customJobTile(),
               customJobTile(),
               const Divider(),
               const Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Text("Show all", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 2,),
                  Icon(Icons.arrow_forward),
                  Spacer()
                ],
               ),
               Container(
            width: double.infinity,
            height: 10,
            color: const Color.fromARGB(255, 230, 230, 230),
                      ),
              customeRecentSearchesContainer()
               
            
              ],
            ),
                      )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container customeRecentSearchesContainer() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text("Recent searches", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
              const Spacer(),
              TextButton(onPressed: (){}, child: const Text("clear", style:  TextStyle(color: Colors.grey),))
            ],
          ),
          const SizedBox(height: 10,),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Software engineer",

                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 13)
                ),
                TextSpan(
                  text: "     4 new",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 4, 79, 6), fontSize: 12)
                ),
              ]
            )),
            const Text('Alert On . Nairobi County, Kenya')
        ],
      ),
      );
  }

  Widget customJobTile(){
    return const ListTile(
      leading: CircleAvatar(child: Text("T"),),
      title: Text("Duruma transcribers (Remote)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sigma Ai", style: TextStyle(fontSize: 13),),

          Text("Kenya (Remote)", style: TextStyle(fontSize: 12, color: Colors.grey),),
          Text("Viewed", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
          Divider()
        ],
      ),
      trailing: Icon(Icons.close),
    );
  }
}