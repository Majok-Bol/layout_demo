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