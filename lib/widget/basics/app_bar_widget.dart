import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showSearch;
  final VoidCallback? onSearchToggle;

  const AppBarWidget({super.key, 
    required this.title,
    this.showSearch = false,
    this.onSearchToggle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: showSearch
          ? const TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
            )
          : Text(title),
      actions: [
        IconButton(
          icon: Icon(showSearch ? Icons.close : Icons.search),
          onPressed: onSearchToggle,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
