import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
//main app class
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    const String appTitle='Flutter layout demo';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar:AppBar(title:const Text(appTitle,style: TextStyle(color: Colors.red),),centerTitle: true,),
        // backgroundColor:Colors.grey,
        body:const SingleChildScrollView(child: Column(children: [TitleSection(name: "Oeschinen Lake Campground", location:"Kandersteg, Switzerland")],),),
      ),
    );
  }

}
//adding title section class
class TitleSection extends StatelessWidget{
  const TitleSection({super.key,required this.name,required this.location});
  final String name;
  final String location;
  @override
  Widget build(BuildContext context){
    return Padding(padding:const EdgeInsets.all(10),
    child:Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(bottom: 8),child: Text(name,style: const TextStyle(fontWeight: FontWeight.bold),),),
            Text(location,style: TextStyle(color: Colors.grey[500]),),

          ],
        )),
        Icon(Icons.star,color: Colors.red[300],),
        const Text('41'),
      ],

    ) ,
    );
  }
}
//adding button section
class ButtonSection extends StatelessWidget{
  const ButtonSection ({super.key,
  });
  @override
  Widget build(BuildContext context){
    final Color color=Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'Route'),
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),

        ],
      ),

    );
  }
}


//button with text class widget
class ButtonWithText extends StatelessWidget{
  const ButtonWithText({super.key,
    required this.color,
    required this.icon,
    required this.label,

  });
  final Color color;
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color: color,),
        Padding(padding: EdgeInsets.only(top:4),
          child: Text(label,style: TextStyle(fontWeight:FontWeight.w400,color: color),),

        ),
      ],
    );
  }
}