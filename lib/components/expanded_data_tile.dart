import 'package:flutter/material.dart';
import 'package:rs_dashboard/constants/style.dart';

class ExpandedDataTile extends StatelessWidget {
  final String value;
  final String valueTitle;
  final double? textfieldWidth;
  const ExpandedDataTile({
    Key? key,
    required this.value,
    required this.valueTitle,
    this.textfieldWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueTitle,
          style: ksubHeading,
        ),
        SizedBox(
          width: textfieldWidth ?? 235.0,
          height: 40.0,
          child: TextField(
            enabled: false,
            readOnly: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              label: Text(
                value,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
