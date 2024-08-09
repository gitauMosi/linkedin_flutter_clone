

import 'package:flutter/material.dart';
import 'package:linkedin/constants/colors.dart';
import 'package:linkedin/pages/homepage_bodies/add_post_page.dart';
import 'package:linkedin/pages/homepage_bodies/home.dart';
import 'package:linkedin/pages/homepage_bodies/jobs_page.dart';
import 'package:linkedin/pages/homepage_bodies/my_network.dart';
import 'package:linkedin/pages/homepage_bodies/notifacation_page.dart';
import 'package:linkedin/pages/widgets/custom_search_textfield.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int selectedItemIndex = 0;
   DateTime selectedDate = DateTime.now();
   TimeOfDay selectedTime = TimeOfDay.now();
   String date = "select date";
   String time = "select Time";
  final List<Widget> pages = [
    const Home(),
    const MynetworkPage(),
    const AddPostPage(),
    const NotifacationPage(),
    const JobsPage()
  ];

  void onItemSelected(int value){
    setState(() {
      selectedItemIndex = value;
    });
  }
   
   @override
  void setState(VoidCallback fn) {
    
    if(mounted) super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: 
    selectedItemIndex != 2 ?
      AppBar(
        backgroundColor: appBarColor,
        leading: const  CircleAvatar(
          backgroundColor: Colors.grey,
          child: Text("A"),
          ),
        title: customSearchTextField(searchController),
        toolbarHeight: 35,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){},
              child: const Icon(Icons.message)),
          )
        ],
      ) :
      postAppBar(context),
      body:  Center(child: pages.elementAt(selectedItemIndex),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemSelected,
        selectedItemColor: const Color.fromARGB(255, 3, 0, 49),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 11,
        unselectedFontSize: 9,
        showUnselectedLabels: true,
        currentIndex: selectedItemIndex,
        items: [
         customBtmNavItem("Home", Icons.home),
         customBtmNavItem("My network", Icons.people_alt),
         customBtmNavItem("Post", Icons.add_box_rounded),
         customBtmNavItem("Notification", Icons.notifications_sharp),
         customBtmNavItem("Jobs", Icons.badge_rounded)
        ],
        ),
    );
  }

  BottomNavigationBarItem customBtmNavItem(String label, IconData icon){
    return  BottomNavigationBarItem(
            label: label,

            backgroundColor: Colors.white70,
            icon: Icon(icon,));
  }

  AppBar postAppBar(BuildContext acontext){
    String? dropvalue;
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          const Icon(Icons.close),
          const SizedBox(width: 3,),
          customCircleAvatar(),
          const SizedBox(width: 3,),
          DropdownButton<String>(
            value: dropvalue,
            padding: const EdgeInsets.all(0),
            underline: const SizedBox(height: 0,),
            hint: const Text("Anyone"),
            icon: const Icon(Icons.arrow_drop_down),
            items: <String>["fireds", "client"].map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(

                value: value,
                child: Tooltip(message: value, child: Text(value, style: const TextStyle(fontSize: 12),),));
            },
            ).toList(),
             onChanged: (String? newValue){
              setState(() {
                dropvalue = newValue;
              });
             }),
        ],
      ),

      actions: [
        GestureDetector(
          onTap: (){
            timeBottomSheet(acontext);
          },
          child: const Icon(Icons.timelapse_outlined)),
        const SizedBox(width: 5,),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 216, 216, 216)
          ),
          onPressed: (){},
         child: const Text("Post"))
      ],
    );
  }

  Widget customCircleAvatar(){
    return Container(
      width: 25,
      height: 25,
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle
      ),
      child: const Center(child: Text("A", style: TextStyle(fontSize: 11),)),
    );
  }

  void timeBottomSheet(BuildContext acontext){
    
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: acontext,
       builder: (BuildContext context){
        return Container(
           decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),), color: Colors.white),
           padding: const EdgeInsets.all(16),
           child:  Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  const Spacer(),
                  Container(
                    width: 60,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey
                    ),
                  ),
                  const Spacer()
                ],
              ),
               const SizedBox(height: 10,),
               const Row(
                children: [
                  SizedBox(width: 4,),
                  Text("Schedule"),
                  Spacer(),
                  Text("View All", style:  TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward)
                ],
               ),
               const SizedBox(height: 10,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(" Date*",style: TextStyle(fontSize: 13), ),
                  TextFormField(      
                    onTap: (){
                       _selectDate(context);
                    },
                   decoration:  InputDecoration(
                    suffixIcon: const Icon(Icons.date_range),
                    hintText: date,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                   ),
                   
                  )
                ],
               ),
              const SizedBox(height: 5,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(" Time*",style: TextStyle(fontSize: 13), ),
                  TextFormField(      
                    onTap: (){
                    _selectTime(context);
                    },
                   decoration:  InputDecoration(
                    suffixIcon: const Icon(Icons.timer),
                    hintText: time,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                   ),
                   
                  )
                ],
               ),
               const SizedBox(height: 12,),
            const Text("(UTC+03:00) Nairobi, based on your location"),
            const SizedBox(height: 12,),
            Row(
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               const  Spacer(),
                ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    padding: const  EdgeInsets.only(left: 60, right: 60),
                    backgroundColor: const Color.fromARGB(255, 4, 22, 154)
                  ),
                  onPressed: (){},
                 child: const Text("Next", 
                 style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
              const Spacer()
              ],
            )
            ],
           ),
        );
       }
       );
  }

  Future<void> _selectDate(BuildContext context) async {
    
   
    final DateTime? picked = await showDatePicker(
      helpText: "select Date",
      cancelText: "cancel",
      confirmText: "Select",
      fieldHintText: "Month/Date/year",
      fieldLabelText: "Enter date",
      errorFormatText: "Enter valid date",
      errorInvalidText: "Enter date in valid range",
      context: context, 
      builder: (BuildContext context, Widget? child){
        return Theme(data: ThemeData.light(), child: child!);
      },
      initialDate: selectedDate,
      firstDate: DateTime(2024, 8),
       lastDate: DateTime(2101));
    if(picked != null && picked != selectedDate){
      setState(() {
        selectedDate = picked;
        date = picked.toString();
      });
    }
  }

  Future<Null> _selectTime(BuildContext context) async {
     
    final TimeOfDay? picked = await showTimePicker(
      context: context,
       initialTime: selectedTime,
       builder: (BuildContext context, Widget? child){
        return Theme(
          data: ThemeData.light(),
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          )
        ,);
       }
       
       );
       if(picked != null){
        setState(() {
          selectedTime = picked;
          time = picked.toString();
        });
       }
       init() async {

       }
  }
  
}