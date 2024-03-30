import 'package:demo/login_screen.dart';
import 'package:demo/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("My First Project"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(

          children: [


            CustomButton(width: 100,text: 'Login Now', press: () {
              Get.to(LoginScreen());
            },),
            SizedBox(width: 10.0,),
            CustomButton(
              text: 'Sign Now',textColor: Colors.black,backgroundColor: Colors.amberAccent, press: () {

            },),




          ],
        ),
      ),
    );
  }
}
