import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() {
  runApp(const bmicalculator());
}

class bmicalculator extends StatelessWidget {
  const bmicalculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          //primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        //colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      ),
      home: const Inputpage(),
    );
  }
}








