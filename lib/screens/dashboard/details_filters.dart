import 'package:flutter/material.dart';
import 'package:rs_dashboard/components/custom_titled_dropdown.dart';
import 'package:rs_dashboard/constants/style.dart';
import 'package:rs_dashboard/data/local_data.dart';

class DetailsFilters extends StatelessWidget {
  final VoidCallback? onAddItemTap;
  const DetailsFilters({
    Key? key,
    this.onAddItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTitledDropdown(
          title: 'Category',
          defaultLabel: 'Sneakers',
          options: kCategoriesData,
        ),
        CustomTitledDropdown(
          title: 'Brand',
          defaultLabel: 'Zamoran',
          options: kBrandData,
        ),
        CustomTitledDropdown(
          title: 'Sortby',
          defaultLabel: 'Best Seller',
          options: kSortBy,
          width: 80,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue.shade700),
          ),
          onPressed: onAddItemTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Add New Items',
                  style: ksubHeading.copyWith(
                    color: Colors.white,
                  ),
                ),
                const Icon(Icons.add),
              ],
            ),
          ),
        ),
        Container(
          width: 200.0,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey),
          ),
          child: DefaultTabController(
            length: 3,
            child: TabBar(
              tabs: const <Widget>[
                Tab(
                  height: 30.0,
                  iconMargin: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.dashboard,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  height: 30.0,
                  iconMargin: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.dashboard,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  height: 30.0,
                  iconMargin: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.dashboard,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
              indicator: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.blue.shade700),
            ),
          ),
        ),
      ],
    );
  }
}
