import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  TextEditingController userNameController= TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: userNameController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'اسم المستخدم',
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'من فضلك ادخل اسم المستخدم';
                }
                return null;

              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'اسم المستخدم',
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'من فضلك ادخل اسم المستخدم';
                }
                return null;

              },
            ),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                 print('validator');
              }
            },child: Text('تسجيل دخول'),),
          ],
        ),
      ),
    );
  }
}
