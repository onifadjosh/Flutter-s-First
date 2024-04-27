import 'package:flutter/material.dart';

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

      body:const Padding(
          padding:EdgeInsets.symmetric(horizontal: 24),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Text('Sign In', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,),),
        Text('Sign in to your Pairdel account.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)
      ],
      ),
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
    return SizedBox(
      width: double.infinity,
      child: TextField(),
    );
  }
}