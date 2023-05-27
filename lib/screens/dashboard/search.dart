import 'package:flutter/material.dart';
import 'package:rs_dashboard/components/dropdown.dart';
import 'package:rs_dashboard/components/graph.dart';
import 'package:rs_dashboard/constants/style.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Search For Items',
            style: kHeading,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'Type id number or name of items',
            style: ksubHeading,
          ),
          const SizedBox(
            height: 25.0,
          ),
          SizedBox(
            height: 30.0,
            child: TextField(
              style: const TextStyle(fontSize: 15.0),
              decoration: kTextFieldDecoration,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.white,
            elevation: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Purchased',
                            style: ksubHeading.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '32.860',
                            style: kHeading.copyWith(color: Colors.red),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Product Income',
                            style: ksubHeading.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '32.860',
                                style: kHeading.copyWith(
                                    color: Colors.blue.shade900),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Chip(
                                label: const Text('12%'),
                                backgroundColor: Colors.blue.shade50,
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Available',
                            style: ksubHeading.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '32.860',
                            style:
                                kHeading.copyWith(color: Colors.blue.shade900),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomDropdown(),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    height: 100,
                    child: Graph(
                      gradientColors: const <Color>[
                        Colors.blue,
                        Color.fromARGB(80, 252, 252, 252),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Product Spending',
                            style: ksubHeading.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '32.860',
                                style: kHeading.copyWith(color: Colors.red),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Chip(
                                label: const Text('12%'),
                                backgroundColor: Colors.red.shade50,
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomDropdown(),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    height: 100,
                    child: Graph(
                      gradientColors: [Colors.red, Colors.red.shade50],
                      lineColor: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
