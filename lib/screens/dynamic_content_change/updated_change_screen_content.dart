
import 'package:flutter/material.dart';

class UpdatedChangeScreenContent extends StatefulWidget {
  const UpdatedChangeScreenContent({super.key});

  @override
  State<UpdatedChangeScreenContent> createState() => _UpdatedChangeScreenContentState();
}

class _UpdatedChangeScreenContentState extends State<UpdatedChangeScreenContent> {
  int currentIndex = 0;

  List<String> btnTitles = ['Screen 1','Screen 2','Screen 3','Screen 4','Screen 5'];

  void changeContent(int index){
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> contentList = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(btnTitles.length, (index) {
              final isSelected = currentIndex == index;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    changeContent(index);
                  },
                  child: Container(
                       width: 150,
                        height: 45,
                       decoration: BoxDecoration(
                         color: isSelected ? Colors.blue : Colors.grey.shade200,
                         borderRadius: BorderRadius.circular(12)
                       ),
                      child: Center(child: Text(btnTitles[index],style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black
                      ),))),
                ),
              );
            }),
          ),
          SizedBox(height: 50,),
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey.shade200
            ),
            child: contentList[currentIndex],
          )
        ]

      )

    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.green
        ),
        child: Center(child: Text('Screen 1')),
      ),
    );
  }
}


class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green
        ),
        child: Center(child: Text('Screen 2')),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green
        ),
        child: Center(child: Text('Screen 3')),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green
        ),
        child: Center(child: Text('Screen 4')),
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green
        ),
        child: Center(child: Text('Screen 5')),
      ),
    );
  }
}