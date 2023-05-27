import 'package:flutter/material.dart';
import 'package:rs_dashboard/constants/style.dart';

// ignore: must_be_immutable
class CustomDropdown extends StatefulWidget {
  double? height;
  double? width;
  double? fontSize;
  bool? isHiddinBorder;
  List<String>? options;
  String? defaultLabel;
  CustomDropdown(
      {super.key,
      this.defaultLabel,
      this.options = const [
        'Yearly',
        'Monthly',
        'Weekly',
      ],
      this.fontSize,
      this.height,
      this.width,
      this.isHiddinBorder});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? newValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 30.0,
      width: widget.width ?? 70.0,
      padding: const EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: widget.isHiddinBorder == true
            ? null
            : Border.all(
                color: Colors.grey,
              ),
      ),
      child: DropdownButton<String>(
        hint: Text(
          widget.defaultLabel ?? "Yearly",
          style: ksubHeading.copyWith(fontSize: widget.fontSize ?? 10.0),
        ),
        underline: Container(),
        icon: const Icon(Icons.keyboard_arrow_down),
        items: widget.options!.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: widget.fontSize ?? 10.0),
            ),
          );
        }).toList(),
        value: newValue,
        onChanged: (value) {
          setState(() {
            newValue = value;
          });
        },
      ),
    );
  }
}
