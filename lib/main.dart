import 'package:flutter/material.dart';

void main() {
  runApp(Countapp());
}

class Countapp extends StatefulWidget {
  @override
  State<Countapp> createState() => _CountappState();
}

class _CountappState extends State<Countapp> {
  int teamApointer =0;

  int teamBpointer =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.pink,
          title:const Text(
            'Points Counter',
            ),
            ),

            body :Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                         const Text(
                      'Team A',
                       style: TextStyle(
                        fontSize: 30,
                       ),
                    ),
                
                      Text(
                      '$teamApointer',
                       style: const TextStyle(
                        fontSize: 170,
                       ),
                    ),
                       
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, 
                      minimumSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamApointer++;
                        });
                        print(teamApointer);
                      }, 
                    child:const Text(
                      'Add 1 Point',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ),
                    ),
                
                      const SizedBox(
                        height: 16,
                      ),
                
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, 
                      minimumSize:const Size(150, 50),
                    ),
                    onPressed: (){
                      setState(() {
                          teamApointer+=2;
                        });
                    }, 
                    child:const Text('Add 2 Point',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ),
                    ),
                
                    const SizedBox(
                        height: 16,
                      ),
                
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,   
                      minimumSize:const Size(150, 50),
                    ),
                    onPressed: (){
                      setState(() {
                          teamApointer+=3;
                        });
                    }, 
                    child:const Text('Add 3 Point',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ),
                    ),
                
                    const SizedBox(
                        height: 16,
                      ),
                      ],
                    ),
                
                     const SizedBox(
                      height: 390,
                       child:  VerticalDivider(
                          color: Colors.grey,
                          thickness:1,
                        ),
                     ),
                    Column(
                      children: [
                         const Text(
                      'Team B',
                       style: TextStyle(
                        fontSize: 30 ,
                       ),
                    ),
                
                     Text(
                      '$teamBpointer',
                       style:const TextStyle(
                        fontSize: 170,
                       ),
                    ),
                       
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, 
                      minimumSize:const Size(150, 50),
                    ),
                    onPressed: (){
                      setState(() {
                          teamBpointer++;
                        });
                    }, 
                    child:const Text('Add 1 Point',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ),
                    ),
                
                       const SizedBox(
                        height: 16,
                      ),
                
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, 
                      minimumSize: const Size(150, 50),
                    ),onPressed: (){
                      setState(() {
                          teamBpointer+=2;
                        });
                    }, 
                    child:const Text('Add 2 Point',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ),
                    ),
                
                   const SizedBox(
                        height: 16,
                      ),
                
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, 
                      minimumSize:const Size(150, 50),
                    ),
                      onPressed: (){
                        setState(() {
                          teamBpointer+=3;
                        });
                      }, 
                    child: const Text('Add 3 Point',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ),
                    ),
                
                   const SizedBox(
                        height: 16,
                      ),
                      ],
                    ),
                  ],
                ),
              const Spacer(),
              ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black12, 
                      minimumSize: const Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamApointer=0;
                          teamBpointer=0;
                        });
                      }, 
                    child:const Text(
                      'Reset',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    ),
                    ),
                    
                    const Spacer(),
              ],
            ), 
        ),
    );
  }
}
