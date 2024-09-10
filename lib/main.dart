import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
backgroundColor: Colors.blue.shade100,
      body: Column(
    children: [
Stack(

  children:[


    ClipPath(
      clipper:CustomClipPath(),
      child:
    Container(
      height:300,
      //color: Colors.pink,

      decoration:BoxDecoration(

      borderRadius:BorderRadius.only(bottomLeft:Radius.circular(80),bottomRight:Radius.circular(60)),
border:Border.all(
  width: 4,
  color: Colors.white,

),



image:DecorationImage(
    image:AssetImage('images/pexels-stefanstefancik-91216.jpg'),
  fit: BoxFit.cover,
),


        boxShadow: [
          BoxShadow(
              blurRadius: 11,
              color: Colors.white,
              spreadRadius: 8,
          )
        ],
      ),




    ),

    ),
   Positioned(
right:250,
   child: Container(
      height:100,
      width:100,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.only(bottomLeft:Radius.circular(80),bottomRight:Radius.circular(80),topLeft:Radius.circular(80),topRight:Radius.circular(80)),
        image: DecorationImage(
          image: AssetImage('images/wp2624518.jpg'),
        ),

       boxShadow: [
         BoxShadow(
           blurRadius: 11,
           color: Colors.white,
           spreadRadius: 7
         )
       ]
      ),

    )
    ),



    ],
),




        Container(
          height: 300,
          width: 400,


    child:Column(
        children:[
          Text('Us and Our Dream Night!',style:TextStyle(fontSize: 20,color: Colors.black,fontFamily:"IntroDemo"  )),
          Text('Night of single entity!',style:TextStyle(fontSize: 20,color: Colors.black,fontFamily:"IntroDemo"  )),
          Text('As in moon',style:TextStyle(fontSize: 20,color: Colors.black,fontFamily:"IntroDemo"  )),
          Text('I ever feel blessed to have you!',style:TextStyle(fontSize: 20,color: Colors.black,fontFamily:"IntroDemo"  )),
          Text('You are the amazing presonality',style:TextStyle(fontSize: 20,color: Colors.black,fontFamily:"IntroDemo"  )),
          Text('My Ideal Man ',style:TextStyle(fontSize: 20,color: Colors.black,fontFamily:"IntroDemo"  )),
          Text('My Iron Man',style:TextStyle(fontSize: 20,color: Colors.black,fontFamily:"IntroDemo"  )),
          Text('Most importantly:',style:TextStyle(fontSize: 20,color: Colors.black,fontFamily:"IntroDemo"  )),
          Text('My man......',style:TextStyle(fontSize: 20,color: Colors.black,fontFamily:"IntroDemo"  ))
        ]),


        ),


        Container(
          margin: EdgeInsets.only(top: 10),
          height: 90,
          width: 130,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.only(bottomLeft:Radius.circular(90),bottomRight:Radius.circular(90),topLeft:Radius.circular(90),topRight:Radius.circular(90)),

            image: DecorationImage(
              image: AssetImage('images/pexels-thepaintedsquare-699372.jpg'),
            ),

            boxShadow: [
            BoxShadow(
            blurRadius: 11,
            color: Colors.white,
            spreadRadius: 7
            )
            ]
            ),
child: Padding(
  padding: const EdgeInsets.only(top:22.0,left:70),
  child: Text('Hello Love!',style:TextStyle(fontSize: 20,color: Colors.white ),),
),
        ),




    ],



        ),
    );
  }
}
 class CustomClipPath extends CustomClipper<Path>{
  Path getClip(Size size){

    return Path()

    ..lineTo(0,size.height)
    ..quadraticBezierTo(
      size.width/4,
      size.height-40,
      size.width/2,
      size.height-20,
    )
      ..quadraticBezierTo(
        3/4*size.width,
        size.height,
        size.width,
        size.height-30,
      )
       ..lineTo(size.width, 0);

  }
   bool shouldReclip(CustomClipper<Path>oldClipper){
    return false;
   }

 }