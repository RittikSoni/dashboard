import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:rs_dashboard/data/local_data.dart';
import 'package:rs_dashboard/screens/dashboard/dashboard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController page = PageController();
  SideMenuController sideMenu = SideMenuController();
  @override
  void initState() {
    sideMenu.addListener((p0) {
      page.jumpToPage(p0);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SideMenu(
              controller: sideMenu,
              alwaysShowFooter: true,
              style: SideMenuStyle(
                backgroundColor: Colors.white,
                displayMode: SideMenuDisplayMode.compact,
                hoverColor: Colors.blue[100],
                selectedColor: Colors.lightBlue,
                selectedTitleTextStyle: const TextStyle(color: Colors.white),
                selectedIconColor: Colors.white,

                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.all(Radius.circular(10)),
                // ),
                // backgroundColor: Colors.blueGrey[700]
              ),
              title: Column(
                children: [
                  ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 150,
                        maxWidth: 150,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Card(
                            elevation: 10.0,
                            child: Image.asset('assets/rs_logo.png')),
                      )),
                  const Divider(
                    indent: 8.0,
                    endIndent: 8.0,
                  ),
                ],
              ),
              footer: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SideMenuItem(
                    priority: 8,
                    onTap: (page, _) {
                      sideMenu.changePage(page);
                    },
                    title: '',
                    builder: (context, displayMode) {
                      return Tooltip(
                        message: 'Profile',
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage('assets/rs_logo.png'),
                            ),
                            displayMode == SideMenuDisplayMode.compact
                                ? Container()
                                : const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text('Profile'),
                                  )
                          ],
                        ),
                      );
                    },
                  ),
                  const SideMenuItem(
                    priority: 7,
                    title: 'Exit',
                    icon: Icon(Icons.exit_to_app),
                  ),
                ],
              ),
              items: [
                SideMenuItem(
                  priority: 0,
                  title: 'Dashboard',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.dashboard),
                ),
                SideMenuItem(
                  priority: 1,
                  title: 'Dashboard',
                  badgeContent: Text(
                    kStockData.length.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.view_list),
                ),
                SideMenuItem(
                  priority: 2,
                  title: 'Analytics',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.bar_chart_rounded),
                  trailing: Container(
                      decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 3),
                        child: Text(
                          'New',
                          style:
                              TextStyle(fontSize: 11, color: Colors.grey[800]),
                        ),
                      )),
                ),
                SideMenuItem(
                  priority: 3,
                  title: 'Chat',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.message_sharp),
                ),
                SideMenuItem(
                  priority: 4,
                  title: 'Settings',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Dashboard by Rittik',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                const Dashboard(),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Analytics',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Messages',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Rittik\'s Profile',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
