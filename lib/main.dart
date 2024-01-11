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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      home: ExerciceLayout()
    );
  }
}

class ExerciceLayout extends StatelessWidget {
  const ExerciceLayout({super.key});

  @override
  Widget build(BuildContext context) {

    double width50 = MediaQuery.of(context).size.width / 2;
    double width100 = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Basic Ui"),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: width50,
                width: width50,
                color: Colors.blue,
              ),
              Container(
                height: width50,
                width: width50,
                color: Colors.red,
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: width50,
                width: width100,
                color: Colors.green,
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: width50,
                width: width100 / 3,
                color: Colors.lightBlue.shade200,
              ),
              Container(
                height: width50,
                width: width100 / 3,
                color: Colors.black,
              ),
              Column(
                children: [
                    Container(
                      height: width50 / 4,
                      width: width100 / 3,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: width50 / 4,
                      width: width100 / 3,
                      color: Colors.red,
                    ),
                    Container(
                      height: width50 / 4,
                      width: width100 / 3,
                      color: Colors.purple,
                    ),
                    Container(
                      height: width50 / 4,
                      width: width100 / 3,
                      color: Colors.orange,
                    ),
                ],
              )
            ],
          ),
          Expanded(
            child: Container(
              width: width100,
              color: Colors.brown
            ),
          )
        ],
      )
    );
  }
}
