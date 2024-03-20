 import 'package:flutter/material.dart';

 class NavigationMenu extends StatelessWidget {
   const NavigationMenu({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: [
        Container(color: Color.fromARGB(255, 240, 126, 74)),
        Container(color: Color.fromARGB(255, 84, 241, 168)),
        Container(color: Color.fromARGB(255, 74, 187, 240)),
        Container(color: Color.fromARGB(255, 97, 76, 67)),
      ],
      ),
     );
   }
 }