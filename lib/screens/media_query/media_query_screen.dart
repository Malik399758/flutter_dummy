
import 'package:flutter/material.dart';

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;


    return Scaffold(
      body: screenSize < 600 ? builtSmallDevice() : builtLargeDevice()

    );
  }
  Widget builtSmallDevice(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.phone_android,size: 30,),
          SizedBox(height: 20,),
          Text('Small Device',style: TextStyle(fontSize: 26),)
        ],
      ),
    );
  }

  Widget builtLargeDevice(){
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.phone_android,size: 30,),
          SizedBox(width: 20,),
          Text('Large Device',style: TextStyle(fontSize: 26),)
        ],
      ),
    );
  }
}
