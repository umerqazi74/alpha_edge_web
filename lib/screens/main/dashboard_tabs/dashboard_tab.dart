import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main_widgets.dart';
import 'chart/bar_chart_one.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  TextEditingController mySearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 500,
          padding: const EdgeInsets.fromLTRB(26, 45, 26, 26),
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: Color(0xFF001137),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: bColorOne,
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Trending Developers",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 30),
              DeveloperItemsWidget(
                name: "Alias",
                address: "6qAb456…",
                token: "09",
                amount: "\$60,000",
                isHigh: true,
              ),
              DeveloperItemsWidget(
                name: "Alias",
                address: "6qAb456…",
                token: "09",
                amount: "\$60,000",
                isModerate: true,
              ),
              DeveloperItemsWidget(
                name: "Alias",
                address: "6qAb456…",
                token: "09",
                amount: "\$60,000",
                isLow: true,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Recent Token Launches",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    Container(
                      height: 40,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: bColorOne,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: TextField(
                          controller: mySearchController,
                          textInputAction: TextInputAction.done,
                          style: const TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: "Developer Wallet Search",
                            hintStyle: const TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon:
                                SvgPicture.asset("assets/web_icons/search.svg"),
                            prefixIconConstraints: const BoxConstraints(
                              minHeight: 10,
                              minWidth: 55,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Container(
                height: 630,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF001137),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: bColorOne,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RecentTokenWidget(
                      time: "Time  of Launch",
                      name: "Token Name",
                      price: "Liquidity Pool",
                      vol: "24h Trading Volume",
                      wallet: "Developer  Wallet",
                      platform: "Platform",
                      isYes: true,
                      isHeader: true,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: List.generate(
                            8,
                            (int index) {
                              return RecentTokenWidget(
                                time: "Apr 21, 8:04 AM",
                                name: "Doge",
                                price: "\$53.16B",
                                vol: "\$13.16B",
                                wallet: "6qAb456…",
                                platform: "Raydium",
                                isYes: index.isEven ? true : false,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 380,
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFF0A2051),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: bColorOne,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Developer Leaderboard",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 40),
                          Expanded(
                            child: BarChartOneWidget(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 380,
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xFF0A2051),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: bColorOne,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Upcoming Developer Launches",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 23),
                          Row(
                            children: <Widget>[
                              UpComingItemsWidget(
                                title: "6qAb456…",
                                subTitle: "Raydium",
                                icons: "assets/web_icons/raydium.svg",
                                day: "09",
                                hour: "4",
                                min: "43",
                              ),
                              if (Responsive.isDesktop(context))
                                SizedBox(width: 12),
                              if (Responsive.isDesktop(context))
                                UpComingItemsWidget(
                                  title: "6qAb456…",
                                  subTitle: "Raydium",
                                  icons: "assets/web_icons/raydium.svg",
                                  day: "09",
                                  hour: "4",
                                  min: "43",
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
