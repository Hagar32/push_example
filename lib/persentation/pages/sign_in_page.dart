import 'package:flutter/material.dart';
import 'package:push_example/persentation/pages/new_page.dart';
@override

class FormPage extends StatelessWidget {
  FormPage({super.key,});

  GlobalKey<FormState>state=GlobalKey();
  TextEditingController name =TextEditingController();
  TextEditingController password =TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in please',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.purple.shade300,
      ),
      body: Form(
        key: state,
        child: Column(
          children: [
            SizedBox(width: 16,height: 16,),
            TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return 'this field can not be empty';
                }
                return null;
              },
              controller: name,
              decoration: InputDecoration(
                hintText: '  Please Enter your name ',

              ),
            ),
            SizedBox(width: 16,height: 16,),
            TextFormField(
              validator: ( value){
                if(value!.isEmpty || !value.contains('@') ||!value.endsWith('.com') || value.length<5){
                  return ' invalid Email';

                }
                return null;
              },
              controller: email,
              decoration: InputDecoration(
                hintText: '   Enter Email',
              ),
            ),
            SizedBox(width: 16,height: 16,),
            TextFormField(
              validator: (value){
                if(value!.isEmpty && value.length<6){
                  return '    invalid Password length';

                }
                return null;
              },
              controller: password,
              decoration: InputDecoration(
                hintText: '    Enter  your Password',
              ),
            ),
            SizedBox(width: 16,height: 16,),
            MaterialButton(
              onPressed: (){
                if(state.currentState!.validate()){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NewPage()));

                }

                state.currentState!.validate();

              },
              textColor: Colors.white,
              color: Colors.purpleAccent,

              child: Text('Sign in'),
            ),
          ],
        ),
      ),
    );
  }
}
