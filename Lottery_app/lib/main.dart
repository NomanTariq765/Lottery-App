import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(child: Text('My Lottery App',style: TextStyle(color: Colors.white),)),
        ),

        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 70) ,
                    child: Text('Lottery Winning Price is 4'))),

                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: x == 4 ? Colors.teal : Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: x == 4
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.done_all,
                                color: Colors.green,
                                size: 35,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Congratulation You Won The Lottery $x',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                             const Icon(
                                Icons.error,
                                color: Colors.red,
                                size: 35,
                              ),
                            const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Better Luck Next Time Your Number is $x \n Try Again',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print(random.nextInt(10).toString());
            x = random.nextInt(6);
            print(x);

            setState(() {});
            // print('Tab');
          },
          child: const Icon(Icons.refresh,color: Colors.black,),
        ),
      ),
    );
  }
}
