import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Function showModelFromBottom;
  const CustomAppBar({super.key, required this.showModelFromBottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Expance App",
        style: GoogleFonts.poppins(),
      ),
      actions: [
        IconButton(
            onPressed: () {
              showModelFromBottom(context);
            },
            icon: const Icon(Icons.add))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);
}
