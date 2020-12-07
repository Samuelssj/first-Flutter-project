import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
    children: [
      Image.network('http://cdn30.us1.fansshare.com/image/3dbackgrounds/best-background-walpaper-2041687837.jpg'),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text('Wallpaper'),
          subtitle: Text('Gato Preto'),
          trailing: Container(
            constraints: BoxConstraints(maxHeight: 200),
            child: StarwhithNumber(),
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.call, color: Colors.blue,),
              Text("call")
            ],
          ),
          Column(
            children: [
              Icon(Icons.star, color: Colors.blue,),
              Text("share")
            ],
          ),
          Column(
            children: [
              Icon(Icons.share, color: Colors.blue,),
              Text("share")
            ],
          ),
        ],
      ),
    ),

    Text('Miauu' , style: TextStyle(color: Colors.blue)

    )],
    ),
    );
  }
  
}

class StarwhithNumber extends StatefulWidget {
  @override
  _StarwhithNumberState createState() => _StarwhithNumberState();
}

class _StarwhithNumberState extends State<StarwhithNumber> {
 int likeNumber =42;
 bool isliked = false;

 void givenLiked(){
   setState(() {


   if(isliked){
     likeNumber++;
   }else{
     likeNumber--;
   }
   isliked = !isliked;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$likeNumber'),
        GestureDetector(
          child: Icon(
            Icons.star,
            color: isliked? Colors.red: Colors.grey,
          ),
          onTap: givenLiked,
        )
      ],
    );
  }
}


