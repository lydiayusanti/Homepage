import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class searchTextField extends StatelessWidget {
  const searchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
          size: 20,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: 'Cari Lokasi',
        labelStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        isDense: true,
      ),
    );
  }
}
