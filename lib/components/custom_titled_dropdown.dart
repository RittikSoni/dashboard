import 'package:flutter/material.dart';
import 'package:rs_dashboard/components/dropdown.dart';
import 'package:rs_dashboard/constants/style.dart';

class CustomTitledDropdown extends StatelessWidget {
  final String title;
  final String? defaultLabel;
  final List<String>? options;
  final double? width;
  const CustomTitledDropdown({
    Key? key,
    required this.title,
    this.defaultLabel,
    this.width,
    this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Text(
            '$title:',
            style: ksubHeading,
          ),
          CustomDropdown(
            isHiddinBorder: true,
            defaultLabel: defaultLabel,
            options: options,
            width: width,
          ),
        ],
      ),
    );
  }
}
