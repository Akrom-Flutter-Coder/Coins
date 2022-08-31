import 'package:flutter/material.dart';
class Box extends StatefulWidget {
  const Box({Key? key}) : super(key: key);
  @override
  State<Box> createState() => _BoxState();
}
class _BoxState extends State<Box> {
  List ng1=["Walking","Running","Gym"];
  List ng2=["Tradmil","Cycling","Yogo"];
  List ph=["running.png","foot.png","basket.jpeg"];
  List ph1=["budi.jpeg","fut.png","runn.png","vall.png"];
   int _selectedIndex = 0;
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.skip_previous_sharp),
        title: const Text('Start Activity'),
        backgroundColor: Colors.indigo[200],
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: ListView.builder(itemCount: 3,
        scrollDirection: Axis.vertical,
        itemBuilder: (context,index){
            return Row(
              children: [
              Expanded(
              flex:1,
              child: box(ng1[index],ph[index]),
              ),
              Expanded(
              flex:1,
              child: box(ng2[index],ph1[index]),
              )
              ], 
            );
        }
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 32,),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 161, 174, 246),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business,size: 32),
            label: 'Activity',
            backgroundColor: Color.fromARGB(255, 161, 174, 246),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,size: 35),
            label: 'Profil',
            backgroundColor: Color.fromARGB(255, 161, 174, 246),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,size: 32),
            label: 'Settings',
            backgroundColor: Color.fromARGB(255, 161, 174, 246),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
  Widget box(String data,String photo) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
         height: 150,
          decoration: BoxDecoration(
            color: Colors.indigo[50],
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.indigo[100]!,
                blurRadius: 12,
                spreadRadius: 2,
                offset:const Offset(5, 5) 
              ),
              const BoxShadow(
                color: Colors.white,
                blurRadius: 12,
                spreadRadius: 2,
                offset:Offset(-5, -5) 
              )
            ]
          ),
           child: Column(
            children: [
              Center(
               child: Padding(
                 padding: const EdgeInsets.only(top: 35,bottom: 8),
                 child: Container(
                   width: 45,
                 height: 45,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("assets/images/$photo"))
                 ),),
               ),
            ),
              Center(
                child: Text(data,style: 
                const TextStyle(fontSize: 17,color: Colors.indigo),
                ),
                
                
                ),
            ],
          ),
        ),
    );
  }
}