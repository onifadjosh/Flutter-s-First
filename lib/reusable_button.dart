import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorr;
  final AssetImage imageProvider;
  final VoidCallback onPressed;
  

  const ReusableButton({
    required this.text,
    required this.onPressed,
    required this.imageProvider,
    required this.color,
    required this.colorr,
     Key?key
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[Expanded(
        flex: 1,
        child:  ElevatedButton(
        onPressed: (){}, 
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          surfaceTintColor: MaterialStateProperty.all<Color>(color),
          overlayColor: MaterialStateProperty.all<Color>(colorr),
          shadowColor: MaterialStateProperty.all(Colors.transparent)
        ),
        child: Padding(padding:const EdgeInsets.symmetric(vertical: 15),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Icon( color: Colors.white,),
            // const Icon(Icons.imageProvider, size: 24),
            Image(image: imageProvider, height: 24, width: 24,),
            const SizedBox(width: 37.5),
            Text(text, style:const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF1D2939)),
            ),
          ],
          ),
        )
          ),
      ),]
    );
  }
} 