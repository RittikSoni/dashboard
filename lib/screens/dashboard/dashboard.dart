import 'package:flutter/material.dart';
import 'package:rs_dashboard/screens/dashboard/details.dart';
import 'package:rs_dashboard/screens/dashboard/search.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 233),
      body: Row(
        children: const <Widget>[
          Expanded(
            flex: 1,
            child: Search(),
          ),
          // ConstrainedBox(
          //   constraints: BoxConstraints(
          //     maxWidth: MediaQuery.of(context).size.width / 3.5,
          //     minWidth: MediaQuery.of(context).size.width / 5,
          //   ),
          //   child: const Search(),
          // ),
          Expanded(
            flex: 3,
            child: Details(),
          )
        ],
      ),
    );
  }
}
