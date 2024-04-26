import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'reusable_button.dart';
import 'signIn.dart';


void main() {
  runApp(const MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Pamilerin App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme:const ColorScheme.light(background: Colors.white)
      ),
      home:const MyHomePage(),
      
      routes: {
        // '/': (context) => const MyHomePage(),
        '/signIn': (context) =>const Verify(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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

        body:const CreateInstruction() ,

        
        
        
    );
  }
}

class CreateInstruction extends StatelessWidget {
  const CreateInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
  
        padding: EdgeInsets.all(16),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              
              
                child: Text(
                  'Create an Account',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize:20),
                  
                ),
              ),
              
            Padding(padding: EdgeInsets.only(bottom: 36),
              child: Text('We will send a code to verify your phone number',
              style: TextStyle(fontSize:14, fontWeight: FontWeight.w400),
              ),
            ),
            
            Padding(padding: 
            EdgeInsets.only(bottom: 48),
            child:  AccountText(),),

             ElevatedButtonSample(),
               SizedBox(height: 24,),
               
               SignIn(),
            
            
            Or(),
            ApiButton(),
          ],
        ),
        
        ),
    );
  }
}

class AccountText extends StatelessWidget {
  const AccountText({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  SizedBox(
      
      width: double.infinity,
      child: TextField(
         onTap: () {
        FocusScope.of(context).requestFocus();
      },
      
        decoration:const InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
        
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        
          ),
          
          
          fillColor: Color(0xFFF2F4F7),
          filled: true,
          labelText: 'Email address',
          labelStyle: TextStyle( color: Color(0xFF949494), fontSize: 16, fontWeight: FontWeight.w400,))
      ),
    );
  }
}


class ElevatedButtonSample extends StatefulWidget {
  const ElevatedButtonSample({super.key});

  @override
  State<ElevatedButtonSample> createState() => _ElevatedButtonSampleState();
}

class _ElevatedButtonSampleState extends State<ElevatedButtonSample> {
  String textt = 'Continue';
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(flex: 1,
        child: ElevatedButton(
     
      onPressed: () {
       setState(() {
       textt = 'New Text';
        });
      },
      style: ButtonStyle(
       backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF25A774)),
       
      ),
      child: Padding(
        padding:const EdgeInsets.symmetric(vertical: 15),
       child:Text(textt, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF),
      ),
      ),
        )
        
    ),
        )
      ],
    );
  }
}

class Or extends StatelessWidget {
  const Or({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:const Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: 
        Divider(color: Color(0xFF949494), height: 1,)
        
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text('or', 
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF1D2939)),
        ),
        ),
        
       Expanded(
          flex: 1,
          child: 
          Divider(color: Color(0xFF949494), height: 1,)
        
        ),
        
      ],),
    );
  }
}

class ApiButton extends StatelessWidget {
  const ApiButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 36),
        ReusableButton(text:'Continue with Google', onPressed: (){}, color:const Color(0xFFF2F4F7), imageProvider:const AssetImage('lib/assets/images/google.png')),
        const SizedBox(height: 12),
        ReusableButton(text:'Continue with Apple', onPressed: (){}, color:const Color(0xFFF2F4F7), imageProvider:const AssetImage('lib/assets/images/apple.png')),
      ],
    );
  }
}


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: () {
            Navigator.pushNamed(context, '/signIn');
          }, 
          child:const Text(
          'Have an account? Sign in',
          style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Color(0xFF1D2939),
          decoration: TextDecoration.underline,)),
          );

  }
}