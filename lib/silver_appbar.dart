import 'package:flutter/material.dart';
class Silver extends StatefulWidget {
  const Silver({Key? key}) : super(key: key);
  @override
  State<Silver> createState() => _SilverState();
}
class _SilverState extends State<Silver> {
  List gog=[
    "Welcome","Can I help you?","What are you looking for?","Settings section","Search",
    "Add Tags","Users","Personal Accaunts",
  ];
  List col=[Colors.blue,Colors.red,Colors.amber,Colors.blue,
  Colors.green,Colors.red,Colors.amber,Colors.blue];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
            SliverAppBar(
              actions:const[
                Padding(
                  padding: EdgeInsets.only(right: 3),
                  child: Icon(Icons.last_page_sharp,size: 35,
                  color: Colors.red),
                )],
              backgroundColor: Colors.black12.withOpacity(0.7),
            leading: const Padding(
              padding:  EdgeInsets.only(left: 0.1),
              child:  Icon(Icons.menu,size: 29,
              color: Colors.red,),
            ),
            pinned: true,
            stretch: true,
            snap:true,
            floating: true,
            expandedHeight: 190.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              stretchModes:const  <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
              ],
              title:Container(
                height:double.infinity,
                color:Colors.black38,
                child: Stack(children: const[
                  Center(
                    child:Padding(
                      padding: EdgeInsets.only(top: 185),
                      child: Text('Choose your page',
                      style: TextStyle(color: Color.fromARGB(255, 6, 118, 10),fontSize: 24),),
                    ),
                  )
                ]),
                
              ),
              background: Image.network("https://cdn.vox-cdn.com/thumbor/Pkmq1nm3skO0-j693JTMd7RL0Zk=/0x0:2012x1341/1200x800/filters:focal(0x0:2012x1341)/cdn.vox-cdn.com/uploads/chorus_image/image/47070706/google2.0.0.jpg",
              fit: BoxFit.cover,)
            ),
          ),
          const SliverToBoxAdapter(
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: 
                    const BorderRadius.all(Radius.circular(19)),color: col[index],),
                    height: index==7?300:100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        index!=7? const SizedBox():
                        Image.network("https://regnum.ru/uploads/pictures/news/2017/06/26/regnum_picture_1498467312897464_normal.png"),
                        //  Text(index==7?'${gog[7]}':' ', textScaleFactor:2),
                        index==7? const SizedBox():
                        Center(
                          child: Text('${gog[index]}', textScaleFactor:2),
                          ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 8,
            ),
          ),
        ],
      ),
    );
  }
}