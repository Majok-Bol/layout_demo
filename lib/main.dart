import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
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
        backgroundColor:Colors.grey,
        body: const Center(child: Text('Hello World'),),
      ),
    );
  }

}

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

          ],
        ))
      ],
    ) ,
    );
  }
}