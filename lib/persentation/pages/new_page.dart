import 'package:flutter/material.dart';
class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' New Page',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.purple.shade300,
      ),




        body: Center(
        child: Column(

          children: [
            SizedBox(height: 20,),
            Text(' Welcome !',style: (TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),),
            SizedBox(height: 16,),
            Image.network('https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg'),
          ],
        ),
      ),
    );
  }
}
