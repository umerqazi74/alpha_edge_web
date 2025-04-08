import 'package:alpha_edge_web/core/button_widget.dart';
import 'package:alpha_edge_web/core/clickable_widget.dart';
import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/screens/home/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main_widgets.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  TextEditingController mySearchController = TextEditingController();
  bool isFilter = false;
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          const Text(
            "Find Token Developers",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 60),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 80,
                width: 680,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: TextField(
                    controller: mySearchController,
                    textInputAction: TextInputAction.done,
                    style: const TextStyle(
                      color: blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    onChanged: (value) {
                      setState(() {
                        if (value.isNotEmpty) {
                          isSearch = true;
                          isFilter = false;
                        } else {
                          isSearch = false;
                          isFilter = false;
                        }
                      });
                    },
                    decoration: InputDecoration(
                      fillColor: whiteColor,
                      filled: true,
                      hintText: "Search by Developer Wallet / ENS / Token Name",
                      hintStyle: const TextStyle(
                        color: Color(0xFF848484),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ButtonWidget(
                          text: "Search",
                          height: 65,
                          width: 190,
                          borderRadius: 100,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          btnColor: bColorOne,
                          borderColor: bColorOne,
                          onPressed: () {},
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minHeight: 10,
                        minWidth: 55,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.only(
                        left: 40,
                        right: 10,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30),
              InkWellWidget(
                onTap: () {
                  setState(() {
                    isFilter = !isFilter;
                    isSearch = false;
                  });
                },
                child: Row(
                  children: <Widget>[
                    Text(
                      "Filters",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 6),
                    SvgPicture.asset(
                      "assets/web_icons/filter.svg",
                      colorFilter: ColorFilter.mode(
                        whiteColor,
                        BlendMode.srcIn,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          if (isFilter)
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 50),
              margin:
                  EdgeInsets.only(top: 60, bottom: 60, left: 140, right: 140),
              decoration: BoxDecoration(
                color: Color(0xFF001B3E),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: bColorOne,
                  width: 1,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TabBar(
                          labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          tabAlignment: TabAlignment.start,
                          labelColor: whiteColor,
                          unselectedLabelColor: Color(0xFF9CA6B4),
                          dividerColor: Colors.transparent,
                          isScrollable: true,
                          indicatorColor: bColorOne,
                          unselectedLabelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          tabs: const <Widget>[
                            Tab(
                              text: "Advanced Filters Panel",
                            ),
                            Tab(
                              text: "Wallet Address / ENS Name",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      CircleIconWidget(
                        height: 37,
                        width: 37,
                        icon: "assets/web_icons/cross.svg",
                        borderColor: bColorOne,
                        onTap: () {
                          setState(() {
                            isFilter = false;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  FilterWidget(
                    isHeader: true,
                    lf: "Launch Frequency",
                    sr: "Success Rate",
                    lp: "Launch Platform",
                    la: "Liquidity Added",
                    eut: "Exclude unbonded tokens",
                    isSwitch: false,
                  ),
                  Column(
                    children: List.generate(
                      3,
                      (int index) {
                        return FilterWidget(
                          isHeader: false,
                          lf: "Daily",
                          sr: "50%+",
                          lp: "Pump",
                          la: "\$100k",
                          eut: index == 0 ? "Pump.fun" : "",
                          isSwitch: index == 0 ? true : false,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          if (isSearch)
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 50),
              margin: EdgeInsets.only(top: 60, bottom: 60),
              decoration: BoxDecoration(
                color: Color(0xFF001137),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: bColorOne,
                  width: 1,
                ),
              ),
              child: Column(
                children: <Widget>[
                  SearchWidget(
                    isHeader: true,
                    name: "Developer Name",
                    wallet: "Developer Wallet",
                    token: "Number of Token\nLaunches",
                    volumePerToken: "Avg. Trading Volume\nPer Token",
                    liquidityPerToken: "Avg. Liquidity\nPer Token",
                    isYes: true,
                    time: "Last Token\nLaunched",
                    rate: "Success\nRate %",
                  ),
                  Column(
                    children: List.generate(
                      6,
                      (int index) {
                        return SearchWidget(
                          isHeader: false,
                          name: "Jhon",
                          wallet: "6qAb456…",
                          token: "54",
                          volumePerToken: "3xF...9Yz",
                          liquidityPerToken: "\$60,000",
                          isYes: index.isEven ? true : false,
                          time: "4 seconds ago",
                          rate: "56%",
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          if (isFilter == false && isSearch == false)
            Container(
              height: 400,
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 50),
              margin:
                  EdgeInsets.only(top: 6, bottom: 60, left: 140, right: 140),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                "© 2025 Alpha Edge. All rights reserved.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    "Terms of Service",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 30),
                  const Text(
                    "Contact Support",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
