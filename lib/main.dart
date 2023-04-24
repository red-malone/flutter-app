import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learn/models/Programs.dart';
import 'package:learn/models/Lessons.dart';
import 'package:learn/services/lesson_services.dart';
import 'package:learn/services/remote_services.dart';
import 'section1.dart';
import 'colors.dart';
import 'section3.dart';
import 'section4.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Learn'),
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

  List <Item>? programs;
  List <Items>? lessons;
  var load=false;
  var isLoaded=false;

  @override
  void initState(){
    super.initState();
    getData();

  }
  getData() async{
  programs = await RemoteService().getPrograms();
  if(programs!=null){
    setState(() {
      isLoaded=true;
    });
  }
  }

  getstudy() async{
    lessons =await LessonsService().getLessons();
    if(lessons!=null){
      setState(() {
        load=true;
      });
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.grey,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.question_answer_outlined,color: Colors.grey,)),
          SizedBox(width: 1),
          IconButton(onPressed: (){}, icon: Image.asset('assets/icons/img.png',width: 22,height: 22,))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              Container(
                margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  color: "#EEF3FD".toColor(),
                  child: Column(
                    children: [
                      first(),
                    ],
                  )
              ),
              Column(
                children: [
                  five(),
                  Container(
                    height: 300,
                    width: 450,
                    child: Visibility(
                      visible: isLoaded,
                      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: programs?.length,itemBuilder: (context ,index){
                            return Container(
                              child:Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.white
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(12))
                                ),
                                child: SizedBox(
                                  width: 270,
                                  height: 270,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/images/img.png"),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              programs![index].category,
                                              style: TextStyle(
                                                  fontFamily: 'Inter',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.blueAccent
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              programs![index].name,
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(height: 20,),
                                            Text(
                                              "${programs![index].lesson} lessons",
                                              style: TextStyle(
                                                  fontFamily: 'Inter',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              "Created at ${programs![index].createdAt}",
                                              style: TextStyle(
                                                  fontFamily: 'Inter',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                      replacement: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                      ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    third(),
                    scrollable1(),
                  ],
                ),
              ),
              /*
              Container(
                child: Column(
                  children: [
                    fourth(),
                    scrollable2()
                  ],
                ),
              ),*/
              Column(
                children: [
                  six(),
                  Visibility(
                      visible: load,
                      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: lessons?.length,itemBuilder: (context,index){
                        return Container(
                          height: 320,
                          width: 450,
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.white
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12))
                            ),
                            child: SizedBox(
                              width: 270,
                              height: 290,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/img_1.png"),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          lessons![index].category,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueAccent
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          "Understanding of human behaviour",
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Row(
                                          children: [
                                            Text(
                                              "3 min",
                                              style: TextStyle(
                                                  fontFamily: 'Inter',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey
                                              ),
                                            ),
                                            Spacer(),
                                            SizedBox(
                                              width: 70,
                                              height: 25,
                                              child: Image.asset('assets/images/lock.png',width: 15,height: 15,),
                                            ),


                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        );

                  }
                  ),
                  ),

                ],
              )

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
          selectedItemColor:Colors.blue ,
          unselectedItemColor: Colors.grey,
          items:<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png',width: 20,height: 20,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/openbooks.png',width: 20,height: 20,),
                label:"Learn" ,
            ),
            BottomNavigationBarItem(
                icon:Image.asset('assets/icons/apps.png',width: 20,height: 20,),
                label: 'Hub',
            ),
            BottomNavigationBarItem(
                icon:Image.asset('assets/icons/chat.png',width: 20,height: 20,),
                label: 'Chat',
            ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/profile.png',width: 20,height: 20,),
                label: 'Profile',
            ),
          ]),
    );
  }
}

//first section bar
Widget five(){
  return IntrinsicHeight(
    child: Container(
      padding: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Programs for you", style: TextStyle(fontFamily: 'Lora',fontWeight: FontWeight.w600, fontSize: 20),),
              Spacer(),
              Text("View all",style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey),),
              Icon(Icons.arrow_forward_rounded,size: 16,color: Colors.grey,),
            ],
          ),
        ],
      ),
    ),
  );
}


Widget six(){
  return IntrinsicHeight(
    child: Container(
      padding: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Lessons for you", style: TextStyle(fontFamily: 'Lora',fontWeight: FontWeight.w500, fontSize: 20),),
              Spacer(),
              Text("View all",style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.grey,
                  fontSize: 12
              ),),
              Icon(Icons.arrow_forward_rounded,size: 16,color: Colors.grey,),
            ],
          ),
        ],
      ),
    ),
  );
}

