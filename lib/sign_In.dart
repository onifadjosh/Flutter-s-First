import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';
import 'package:hello_world/reusable_button.dart';



class Verify extends StatelessWidget {
  const  Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon:const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
      ),
      ),

      body: SingleChildScrollView(
        child:  Padding(
          padding:const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        const Text('Sign In', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,),),
        const SizedBox(height: 12),
        const Text('Sign in to your Pairdel account.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Nunito'),),
        const SizedBox(height: 36),
        const TextFieldMail(),
        const SizedBox(height: 12),
        const Password(),
        const SizedBox(height: 12),
        const ForgetPassword(),
        const SizedBox(height: 30),
        const ElevatedButtonSample(),
        const SizedBox(height: 14),
        const  NoAccount(),
        const SizedBox(height: 30),
        const Or(),
        const SizedBox(height: 36,),
        ReusableButton(text:'Continue with Phone', colorr: Color(0xFF949494), onPressed: (){}, color:Color(0xFFF2F4F7), imageProvider:AssetImage('lib/assets/images/mobile.png')),
        const SizedBox(height: 12),
        ReusableButton(text:'Continue with Google', colorr: Color(0xFF949494),onPressed: (){}, color:Color(0xFFF2F4F7), imageProvider:AssetImage('lib/assets/images/google.png')),
        const SizedBox(height: 12),
        ReusableButton(text:'Continue with Apple', colorr: Color(0xFF949494),onPressed: (){}, color:Color(0xFFF2F4F7), imageProvider:AssetImage('lib/assets/images/apple.png')),
        // Form(child: child),
        // TextFormField()
        
        ],
      ),
      )
         )
    );
  }
}




class TextFieldMail extends StatefulWidget {
  const TextFieldMail({super.key});

  @override
  State<TextFieldMail> createState() => _TextFieldMailState();
}

class _TextFieldMailState extends State<TextFieldMail> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: 56,
      
        child:TextField(
          onTap: (){
            FocusScope.of(context).requestFocus();
          },
        decoration:const InputDecoration(
          label: Text('Email Address'),
          focusColor: Colors.green,
          border: InputBorder.none,
          labelStyle: TextStyle( color: Color(0xFF949494), fontSize: 16, fontWeight: FontWeight.w400,),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        
          ),
          
          fillColor: Color(0xFFF2F4F7),
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
          
        ),
        cursorColor: Colors.green,
      ),
     
    );
  }
}

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: 56,
        
        child:TextField(
          onTap: () {
            FocusScope.of(context).requestFocus();
          },
          obscureText: true,
        decoration:const InputDecoration(
          label: Text('Password'),
          focusColor: Colors.green,
          border: InputBorder.none,
          labelStyle: TextStyle( color: Color(0xFF949494), fontSize: 16, fontWeight: FontWeight.w400,),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        
          ),
          
          fillColor: Color(0xFFF2F4F7),
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
          
        ),
          cursorColor: Colors.green,
      ),
     
    );
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.pushNamed(context, routeName);
      // },

      child:const Text('Forgot Password?',
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
           fontFamily: 'Nunito',
          color: Color(0xFF1D2939),
          decoration: TextDecoration.underline,)
          ), 
    );
  }
}

class NoAccount extends StatelessWidget {
  const NoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.pushNamed(context, routeName);
      // },

      child:const Text('No account? Create one',
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Color(0xFF1D2939),
          decoration: TextDecoration.underline,)
          ), 
    );
  }
}