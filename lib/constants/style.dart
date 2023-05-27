import 'package:flutter/material.dart';

TextStyle kHeading =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0);
TextStyle ksubHeading = TextStyle(color: Colors.grey.shade500);

InputDecoration kTextFieldDecoration = InputDecoration(
  contentPadding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
  prefixIcon: const Icon(Icons.search),
  hintText: "Search item here",
  filled: true,
  fillColor: Colors.white,
  iconColor: Colors.grey.shade500,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(8.0)),
  border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(8.0)),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(8.0),
  ),
);
