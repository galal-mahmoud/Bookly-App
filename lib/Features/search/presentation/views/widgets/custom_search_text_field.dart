import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 16.0, horizontal: 30.0),
      child: SafeArea(
          child: TextField(
            cursorColor: Colors.white,
            decoration: InputDecoration(
              suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 19.0,),
              label: const Text('search book', style: TextStyle(
                  color: Colors.white
              ),),
              enabledBorder: buildOutlineInputBorder(color: Colors.white),
              focusedBorder: buildOutlineInputBorder(color: Colors.white),
            ),
          )),);
  }
  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
