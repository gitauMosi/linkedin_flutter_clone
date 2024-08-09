import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return customPost(context);
        });
  }

  Widget customPost(BuildContext context) {
    return Container(
      color: const Color.fromARGB(31, 85, 84, 84),
      margin: const EdgeInsets.only(bottom: 5, top: 1, left: 1, right: 1),
      width: double.maxFinite,
      height: 300,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 1,
              ),
              GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text("A"),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'Amos gitau',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: '. 1st',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ]),
                  ),
                  const Text("Data analysis/activist/.."),
                  const Text("1 d . ()")
                ],
              ),
              const Spacer(),
              customPopMenu(context),
              GestureDetector(
                  child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.cancel_outlined,
                  size: 15,
                  color: Color.fromARGB(255, 112, 112, 112),
                ),
              )),
            ],
          ),
          Expanded(child: Container(
            margin: const EdgeInsets.all(2),
            width: MediaQuery.of(context).size.width,
            height: 150,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Image.asset("assets/images/cr3.jpg", fit: BoxFit.cover,)
            ,),),
          
        ],
      ),
    );
  }

  Widget customPopMenu(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (context) => [
        const PopupMenuItem(
            value: 1,
            child: Text(
              "Share",
              style: TextStyle(fontSize: 14),
            )),
        const PopupMenuItem(
            value: 1,
            child: Text(
              "save",
              style: TextStyle(fontSize: 14),
            )),
        const PopupMenuItem(
            value: 1,
            child: Text(
              "repost",
              style: TextStyle(fontSize: 14),
            ))
      ],
      offset: const Offset(0, 40),
      color: Colors.grey,
      onSelected: (value) {},
    );
  }
}
