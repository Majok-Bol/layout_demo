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
        backgroundColor:Colors.grey[300],
        body:const SingleChildScrollView(child: Column(children: [ImageSection(image: 'assets/images/lake.jpg'),TitleSection(name: "Oeschinen Lake Campground", location:"Kandersteg, Switzerland"),ButtonSection(),TextSection(description:'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
            'Bernese Alps. Situated 1,578 meters above sea level, it '
            'is one of the larger Alpine Lakes. A gondola ride from '
            'Kandersteg, followed by a half-hour walk through pastures '
            'and pine forest, leads you to the lake, which warms to 20 '
            'degrees Celsius in the summer. Activities enjoyed here '
            'include rowing, and riding the summer toboggan run.')],),),
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
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),

        ],
      ),

    );
  }
}
class TextSection extends StatelessWidget{
  const TextSection({super.key,
    required this.description
  });
  final String description;
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.all(20),
      child: Text(description,softWrap: true,),
    
    
    );
  }
}
//image section widget
class ImageSection extends StatelessWidget{
  const ImageSection({super.key,required this.image});
  final String image;
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.all(10),child: Image.asset(image,width: 600,height: 350,fit: BoxFit.cover,));
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