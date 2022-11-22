import 'package:flutter/material.dart';


class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
           SizedBox(
             child: Image.asset('assets/images/logo.png',height: 189,
               width: 143,),

          )
        ],
      ),
    );
  }
}
