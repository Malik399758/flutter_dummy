
import 'package:flutter/material.dart';

class MediaQuerySignInScreen extends StatelessWidget {
  const MediaQuerySignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: screenSize < 600 ? builtSmallDevice(context) : builtLargeDevice()
        ),
    );
  }
  Widget builtLargeDevice(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Sign In',style: TextStyle(fontSize: 30),),
              Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email'
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Password'
                          ),
                        ),
                        SizedBox(height: 30,),
                        ElevatedButton(onPressed: (){}, child: Text('Sign in'))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget builtSmallDevice(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Sign In',style: TextStyle(fontSize: 30),),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Email'
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Password'
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){}, child: Text('Sign in'))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
