import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

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
            EdgeInsets.only(bottom: 20),
            child:  AccountText(),),

            ElevatedButtonSample()
            
            
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
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(flex: 1,
        child: ElevatedButton(
     
      onPressed: () {
       
      },
      style: ButtonStyle(
       backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF25A774)),
       
      ),
      child:const Padding(
        padding:EdgeInsets.symmetric(vertical: 15),
       child:Text('Continue', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF),
      ),
      ),
        )
        
    ),
        )
      ],
    );
  }
}








// class TextInput extends StatefulWidget {
//   const TextInput({super.key});

//   @override
//   State<TextInput> createState() => _TextInputState();
// }

// class _TextInputState extends State<TextInput> {
//   final controller = TextEditingController();
//   String text= "";

//   @override
//   void dispose(){
//     super.dispose();
//     controller.dispose();
//   }
//   void changeText(text){
//     // setState(() {
//     //   this.text=text;
//     // });
//     this.text = text;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column( 
//       children: <Widget>[
//       TextField(
//       controller: this.controller,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.message), 
//         labelText: "Type a message"),
//         onChanged: (text)=> this.changeText(text),
//     ),
//     Text(this.text)
//     ]);
//   }
// }


// class Counter extends StatefulWidget {
//   const Counter({super.key});

//   @override
//   State<Counter> createState() => _CounterState();
// }


// //more stateful widgets..
// class _CounterState extends State<Counter> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ElevatedButton(onPressed: _incrementCounter, child: Text('increment'))
//       ],
//     );
//   }
// }