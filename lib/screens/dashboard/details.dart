import 'package:flutter/material.dart';
import 'package:rs_dashboard/components/expanded_data_tile.dart';
import 'package:rs_dashboard/constants/style.dart';
import 'package:rs_dashboard/data/local_data.dart';
import 'package:rs_dashboard/screens/dashboard/details_filters.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List checkedItems = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
      child: Column(
        children: <Widget>[
          DetailsFilters(
            onAddItemTap: () {
              setState(() {
                kStockData.add(
                  Stock(
                    image: 'assets/shoe_1.png',
                    idNumber: 'SG812344',
                    price: '2500',
                    productName: 'American Sneakers Shoes Blue',
                    size: '38-45',
                    stock: '798',
                    brand: 'Zamoran',
                    discount: 25,
                    discountPrice: 609,
                    madeIn: 'Australia',
                  ),
                );
              });
            },
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '#####',
                          style: ksubHeading,
                        ),
                        Text(
                          'ID number',
                          style: ksubHeading,
                        ),
                        Text(
                          'Product Name',
                          style: ksubHeading,
                        ),
                        Text(
                          'Size',
                          style: ksubHeading,
                        ),
                        Text(
                          'Price',
                          style: ksubHeading,
                        ),
                        Text(
                          'Stock',
                          style: ksubHeading,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 8.0),
                  child: Expanded(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 200,
                        maxHeight: MediaQuery.of(context).size.height / 1.4,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: kStockData.length,
                        itemBuilder: (context, index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.grey.shade200)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ExpansionTile(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: checkedItems.contains(index),
                                          onChanged: (value) {
                                            setState(() {
                                              value == true
                                                  ? checkedItems.add(index)
                                                  : checkedItems.contains(index)
                                                      ? checkedItems
                                                          .remove(index)
                                                      : null;
                                            });
                                          },
                                        ),
                                        const SizedBox(
                                          width: 20.0,
                                        ),
                                        Image.asset(
                                          kStockData[index].image,
                                          height: 40.0,
                                          width: 40.0,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      kStockData[index].idNumber,
                                    ),
                                    Text(kStockData[index].productName),
                                    Text(kStockData[index].size),
                                    Text('\$${kStockData[index].price}'),
                                    Text('${kStockData[index].stock} pairs'),
                                  ],
                                ),
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: Image.asset(
                                          kStockData[index].image,
                                          height: 200,
                                          width: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30.0, left: 10.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                ExpandedDataTile(
                                                  valueTitle: 'Product Name',
                                                  value: kStockData[index]
                                                      .productName,
                                                ),
                                                const SizedBox(
                                                  width: 15.0,
                                                ),
                                                ExpandedDataTile(
                                                  valueTitle: 'Normal Price',
                                                  value:
                                                      '\$${kStockData[index].price}.00',
                                                  textfieldWidth: 150.0,
                                                ),
                                                const SizedBox(
                                                  width: 15.0,
                                                ),
                                                ExpandedDataTile(
                                                  valueTitle: 'Size',
                                                  value:
                                                      '${kStockData[index].size} EUR',
                                                  textfieldWidth: 150.0,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15.0,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                ExpandedDataTile(
                                                  valueTitle: 'ID Number',
                                                  value: kStockData[index]
                                                      .idNumber,
                                                  textfieldWidth: 110.0,
                                                ),
                                                const SizedBox(
                                                  width: 15.0,
                                                ),
                                                ExpandedDataTile(
                                                  valueTitle: 'Product Year',
                                                  value: kStockData[index]
                                                      .idNumber,
                                                  textfieldWidth: 110.0,
                                                ),
                                                const SizedBox(
                                                  width: 15.0,
                                                ),
                                                ExpandedDataTile(
                                                  valueTitle: 'Discount',
                                                  value:
                                                      '${kStockData[index].discount}%',
                                                  textfieldWidth: 150.0,
                                                ),
                                                const SizedBox(
                                                  width: 15.0,
                                                ),
                                                ExpandedDataTile(
                                                  valueTitle: 'Stock Pairs',
                                                  value:
                                                      '${kStockData[index].stock}pairs',
                                                  textfieldWidth: 150.0,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15.0,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                ExpandedDataTile(
                                                  valueTitle: 'Brand',
                                                  value:
                                                      kStockData[index].brand,
                                                  textfieldWidth: 110.0,
                                                ),
                                                const SizedBox(
                                                  width: 15.0,
                                                ),
                                                ExpandedDataTile(
                                                  valueTitle: 'Made in',
                                                  value:
                                                      kStockData[index].madeIn,
                                                  textfieldWidth: 110.0,
                                                ),
                                                const SizedBox(
                                                  width: 15.0,
                                                ),
                                                ExpandedDataTile(
                                                  valueTitle: 'Discount Price',
                                                  value:
                                                      '\$${kStockData[index].discountPrice}.00',
                                                  textfieldWidth: 150.0,
                                                ),
                                                const SizedBox(
                                                  width: 15.0,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                              SnackBar(
                                                        backgroundColor:
                                                            Colors.green,
                                                        content: Text(
                                                            '${kStockData[index].productName} has been placed successfully!'),
                                                        duration:
                                                            const Duration(
                                                                seconds: 4),
                                                      ));
                                                    },
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                              Colors.blue
                                                                  .shade700),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 20.0,
                                                          vertical: 10.0),
                                                      child: Text(
                                                        'Order Now',
                                                        style: kHeading,
                                                      ),
                                                    )),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
