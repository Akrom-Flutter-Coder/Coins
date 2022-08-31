import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/chart.dart';
import 'package:my_app/next.dart';
class SilversApp extends StatefulWidget {
  const SilversApp({Key? key}) : super(key: key);
  @override
  State<SilversApp> createState() => _SilversAppState();
}
class _SilversAppState extends State<SilversApp> {
  List coiner=[
    "Bitcoin","Bitshares","Ethereum","Counter","Lykke","Percoin","Zcash","Ren","Icon","Tron","UMA","NEM"
  ];
  List money=[
    "4702🏦","3802🏦","7202🏦","4702🏦","8600🏦","4702🏦","2345🏦","5502🏦","2802🏦","1652🏦","2302🏦","4402🏦"
  ];
  List staf=[
    "3.0%","4.0%","5.0%","2.0%","3.0%","2.5%","3.0%","4.0%","5.0%","2.0%","1.0%","2.5%"
  ];
  List comPh=[
    "1.png","22.png","21.png","4.png","5.png","61.png","7.png","8.png","91.jpeg","101.png","111.png","1212.png"
  ];
  List coll=[Colors.red,Colors.green];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
           stretch: true,
           backgroundColor: Color.fromRGBO(17, 60, 252,1),
            expandedHeight: 170.0,
            flexibleSpace: FlexibleSpaceBar(
               collapseMode: CollapseMode.parallax,
              stretchModes:const  <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
              ],
             title:const Center(
               child:Padding(
                 padding: EdgeInsets.only(top: 32),
                 child: Text('My Digital Currency',
                 style: TextStyle(color: Color.fromARGB(255, 245, 248, 245),fontSize: 17,fontWeight: FontWeight.w600),),
               ),
             ) ,
                background: Image.asset("assets/images/28.jpg",
                fit: BoxFit.cover,
              )
            ),
            actions:   [
              Padding(padding: EdgeInsets.only(right: 15),
              child: InkWell(child: Icon(Icons.person_outline,size: 35,),
             onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return NextPage();}));
                }),
              ),)
            ],
            leading: Padding(
              padding:const  EdgeInsets.only(left: 19),
              child: InkWell(child: Icon(Icons.menu,size: 35,),
            onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return NextPage();}));
                }),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 23,left: 6,right: 6),
                child: Container(
                  width: double.infinity,
                 height: 85,
                 decoration: const BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(33)),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Color.fromARGB(255, 162, 210, 249),
                       blurRadius: 7,
                      // spreadRadius: 1,
                       offset: Offset(5,5)
                     ),
                     BoxShadow(
                       color: Color.fromARGB(255, 227, 237, 245),
                       blurRadius: 1,
                      // spreadRadius: 1,
                       offset: Offset(-5,-5)
                     )
                   ]
                 ),
                  child:Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16,bottom: 16,left: 29),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset("assets/images/${comPh[index]}"),
                             Padding(
                               padding: const EdgeInsets.only(left: 12),
                               child: Container(
                                 width: 100,
                                 child: Text("${coiner[index]}",style: 
                                 TextStyle(
                                   color: Colors.indigo[900],
                                   fontSize: 20,
                                 ),),
                               ),
                             ),
                              SizedBox(
                                width: 120,
                                child: Chart()),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.end,
                                 children:[
                                Text(money[index],style: TextStyle(
                                  color: Colors.indigo[900],
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                                  ),
                                 Text(staf[index],
                                 style:TextStyle(
                                   color: index%3==1? Colors.red:Colors.green,
                                   fontWeight: FontWeight.w600
                                 ),)
                                 ]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ),
                  
                );
              },
              childCount: 12,
            ),
          ),
        ],
      ),
    );
    
  }
}