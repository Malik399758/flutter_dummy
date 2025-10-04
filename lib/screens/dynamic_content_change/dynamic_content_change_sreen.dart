

import 'package:flutter/material.dart';

class DynamicContentChangeScreen extends StatefulWidget {
  const DynamicContentChangeScreen({super.key});

  @override
  State<DynamicContentChangeScreen> createState() => _DynamicContentChangeScreenState();
}

class _DynamicContentChangeScreenState extends State<DynamicContentChangeScreen> {
  int currentIndex = 0;

  List<bool> isActive = List.generate(3, (index) => false);

  final List<Widget> list = [
    Screen1(),
    Screen2(),
    Screen3()
  ];

  void changeContent(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            Row(
               spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: currentIndex == 0 ? Colors.green : Colors.grey
                  ),
                    onPressed: (){
                  changeContent(0);
                }, child: Text('Screen 1')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: currentIndex == 1 ? Colors.green : Colors.grey
                    ),
                    onPressed: (){
                  changeContent(1);
                }, child: Text('Screen 2')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: currentIndex == 2 ? Colors.green : Colors.grey
                    ),
                    onPressed: (){
                  changeContent(2);
                }, child: Text('Screen 3')),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey.shade100
              ),
              child: list[currentIndex],
            )
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Screen 1'));
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Screen 2'));
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Screen 3'));
  }
}
