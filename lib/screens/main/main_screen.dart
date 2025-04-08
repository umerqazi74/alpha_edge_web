import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/screens/home/home_widgets.dart';
import 'package:alpha_edge_web/screens/main/dashboard_tabs/live_token_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dashboard_tabs/alert_tab.dart';
import 'dashboard_tabs/dashboard_tab.dart';
import 'dashboard_tabs/liquidity_pool_tab.dart';
import 'dashboard_tabs/past_token_tab.dart';
import 'dashboard_tabs/report_tab.dart';
import 'dashboard_tabs/search_tab.dart';
import 'dashboard_tabs/settings_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedMenuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAppColor,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/web_icons/shd.png",
              height: 550,
              width: MediaQuery.of(context).size.width / 1.5,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/web_icons/logo.svg"),
                      SizedBox(width: 20),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                MenuItemWidget(
                                  title: "Dashboard",
                                  isSelected:
                                      selectedMenuIndex == 0 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedMenuIndex = 0;
                                    });
                                  },
                                ),
                                MenuItemWidget(
                                  title: "Find Developers",
                                  isSelected:
                                      selectedMenuIndex == 1 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedMenuIndex = 1;
                                    });
                                  },
                                ),
                                MenuItemWidget(
                                  title: "Past Token",
                                  isSelected:
                                      selectedMenuIndex == 2 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedMenuIndex = 2;
                                    });
                                  },
                                ),
                                MenuItemWidget(
                                  title: "Live Token Launches",
                                  isSelected:
                                      selectedMenuIndex == 3 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedMenuIndex = 3;
                                    });
                                  },
                                ),
                                MenuItemWidget(
                                  title: "Alerts",
                                  isSelected:
                                      selectedMenuIndex == 4 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedMenuIndex = 4;
                                    });
                                  },
                                ),
                                MenuItemWidget(
                                  title: "Liquidity Pool",
                                  isSelected:
                                      selectedMenuIndex == 5 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedMenuIndex = 5;
                                    });
                                  },
                                ),
                                MenuItemWidget(
                                  title: "Report",
                                  isSelected:
                                      selectedMenuIndex == 6 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedMenuIndex = 6;
                                    });
                                  },
                                ),
                                MenuItemWidget(
                                  title: "Settings",
                                  isSelected:
                                      selectedMenuIndex == 7 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedMenuIndex = 7;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  selectedMenuIndex == 0
                      ? DashboardTab()
                      : selectedMenuIndex == 1
                          ? SearchTab()
                          : selectedMenuIndex == 2
                              ? PastTokenTab()
                              : selectedMenuIndex == 3
                                  ? LiveTokenTab()
                                  : selectedMenuIndex == 4
                                      ? AlertTab()
                                      : selectedMenuIndex == 5
                                          ? LiquidityPoolTab()
                                          : selectedMenuIndex == 6
                                              ? ReportTab()
                                              : selectedMenuIndex == 7
                                                  ? SettingsTab()
                                                  : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
