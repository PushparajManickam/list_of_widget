import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String? title;
  const AppBarWidget({this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title??""),
      actions: [
        IconButton(
          icon: Icon( Icons.close ),
          onPressed: (){},
        ),
      ],
      backgroundColor:  Colors.grey[800],
    );
  }
}

