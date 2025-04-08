import 'package:alpha_edge_web/core/button_widget.dart';
import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/core/text_form_field_widget.dart';
import 'package:alpha_edge_web/screens/home/home_widgets.dart';
import 'package:alpha_edge_web/screens/main/main_one_widgets.dart';
import 'package:alpha_edge_web/screens/main/main_widgets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'chart/single_line_chart.dart';

class ReportTab extends StatefulWidget {
  const ReportTab({super.key});

  @override
  State<ReportTab> createState() => _ReportTabState();
}

class _ReportTabState extends State<ReportTab> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 590,
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 50),
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
                "Token Liquidity Safety Report",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 25, bottom: 30),
                color: bColorOne,
              ),
              RowWidgets(
                title: "Token Name &\nContract Address",
                titleFont: 16,
                titleWeight: FontWeight.w400,
                titleMaxLine: 2,
                subTitle: "MOONDOGE (0x8fC3A...678)",
                subTitleFont: 16,
                subTitleWeight: FontWeight.w400,
                subTitleMaxLine: 2,
                bottomPadding: 30,
              ),
              RowWidgets(
                title: "Total Liquidity Added",
                titleFont: 16,
                titleWeight: FontWeight.w400,
                titleMaxLine: 2,
                subTitle: "\$250,000",
                subTitleFont: 16,
                subTitleWeight: FontWeight.w400,
                subTitleMaxLine: 2,
                bottomPadding: 30,
              ),
              RowWidgets(
                title: "Liquidity Provider Wallet",
                titleFont: 16,
                titleWeight: FontWeight.w400,
                titleMaxLine: 2,
                subTitle: "3xF9Yz...123 (🔍 View Wallet Activity)",
                subTitleFont: 16,
                subTitleWeight: FontWeight.w400,
                subTitleMaxLine: 2,
                bottomPadding: 30,
              ),
              RowWidgets(
                title: "DEX / Trading Platform",
                titleFont: 16,
                titleWeight: FontWeight.w400,
                titleMaxLine: 2,
                subTitle: "Raydium",
                subTitleFont: 16,
                subTitleWeight: FontWeight.w400,
                subTitleMaxLine: 2,
                bottomPadding: 30,
              ),
              RowWidgets(
                title: "Time Since LP Added",
                titleFont: 16,
                titleWeight: FontWeight.w400,
                titleMaxLine: 2,
                subTitle: "43 seconds ago",
                subTitleFont: 16,
                subTitleWeight: FontWeight.w400,
                subTitleMaxLine: 2,
                bottomPadding: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Proceed to Snipe",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleIconWidget(
                      height: 42,
                      width: 42,
                      icon: "assets/web_icons/rocket.png",
                      boxColor: greenColor,
                      borderColor: greenColor,
                      isPng: true,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Set Alert for LP Changes",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleIconWidget(
                      height: 42,
                      width: 42,
                      icon: "assets/web_icons/bell.png",
                      boxColor: bColorOne,
                      borderColor: bColorOne,
                      isPng: true,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Flag Token as Suspicious",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleIconWidget(
                      height: 42,
                      width: 42,
                      icon: "assets/web_icons/infos.png",
                      boxColor: redColor,
                      borderColor: redColor,
                      isPng: true,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: SingleLineChart(),
              ),
              SizedBox(height: 50),
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF0A2051),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: bColorOne,
                    width: 1,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 74,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/web_icons/waring.png",
                              height: 30,
                              width: 27,
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                "Warning",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              "assets/web_icons/cross.png",
                              height: 30,
                              width: 27,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),

                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Trading this token is extremely risky. Proceed with caution.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 50),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "⚠ Automated Token Risk Analysis",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Safety Metrics",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20, bottom: 30),
                      color: bColorOne,
                    ),
                    Row(
                      children: <Widget>[
                        CircleIconWidget(
                          height: 28,
                          width: 28,
                          imageSize: 16,
                          icon: "assets/web_icons/connect.png",
                          boxColor: redColor,
                          borderColor: redColor,
                          isPng: true,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Is the Contract Renounced?",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "NO (Owner Can Change Rules)",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 40),
                        Image.asset(
                          "assets/web_icons/m4.png",
                          height: 27,
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: <Widget>[
                        CircleIconWidget(
                          height: 28,
                          width: 28,
                          imageSize: 16,
                          icon: "assets/web_icons/coin.png",
                          boxColor: redColor,
                          borderColor: redColor,
                          isPng: true,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Is There a High Sell Tax or Honeypot?",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "YES (18% Sell Tax)",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 40),
                        Image.asset(
                          "assets/web_icons/m4.png",
                          height: 27,
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: <Widget>[
                        CircleIconWidget(
                          height: 28,
                          width: 28,
                          imageSize: 16,
                          icon: "assets/web_icons/dollar.png",
                          boxColor: redColor,
                          borderColor: redColor,
                          isPng: true,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Is Liquidity Locked?",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "NO (LP Can Be Pulled Anytime)",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 40),
                        Image.asset(
                          "assets/web_icons/m6.png",
                          height: 27,
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: <Widget>[
                        CircleIconWidget(
                          height: 28,
                          width: 28,
                          imageSize: 16,
                          icon: "assets/web_icons/waring1.png",
                          boxColor: Color(0xFFFEE600),
                          borderColor: Color(0xFFFEE600),
                          isPng: true,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Known Scammer Wallet?",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "NO (Not on blacklist)",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 40),
                        Image.asset(
                          "assets/web_icons/m5.png",
                          height: 27,
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: <Widget>[
                        CircleIconWidget(
                          height: 28,
                          width: 28,
                          imageSize: 16,
                          icon: "assets/web_icons/waring.png",
                          boxColor: redColor,
                          borderColor: redColor,
                          isPng: true,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Suspicious Liquidity Behavior?",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "YES (90% LP Owned by Creator)",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 40),
                        Image.asset(
                          "assets/web_icons/m4.png",
                          height: 27,
                          width: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 490,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 50),
                margin: EdgeInsets.symmetric(vertical: 20),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Understanding the Risk Score",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 40, bottom: 20),
                      color: bColorOne,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ColumnWidgets(
                            title: "Low Risk",
                            titleFont: 16,
                            titleWeight: FontWeight.w600,
                            subTitle:
                                "Contract renounced, LP locked, and no high tax.",
                            subTitleFont: 16,
                            subTitleWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "Good for sniping",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              CircleIconWidget(
                                height: 42,
                                width: 42,
                                icon: "assets/web_icons/m1.png",
                                boxColor: greenColor,
                                borderColor: greenColor,
                                isPng: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      color: bColorOne,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ColumnWidgets(
                            title: "Medium Risk",
                            titleFont: 16,
                            titleWeight: FontWeight.w600,
                            subTitle: "LP unlocked, but contract is renounced.",
                            subTitleFont: 16,
                            subTitleWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "Could be risky",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              CircleIconWidget(
                                height: 42,
                                width: 42,
                                icon: "assets/web_icons/m2.png",
                                boxColor: Color(0xFFFEE600),
                                borderColor: Color(0xFFFEE600),
                                isPng: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      color: bColorOne,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ColumnWidgets(
                            title: "High Risk",
                            titleFont: 16,
                            titleWeight: FontWeight.w600,
                            subTitle:
                                "LP unlocked, high tax, dev holds majority of  tokens.",
                            subTitleFont: 16,
                            subTitleWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "Likely  scam/rug",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              CircleIconWidget(
                                height: 42,
                                width: 42,
                                icon: "assets/web_icons/m3.png",
                                boxColor: redColor,
                                borderColor: redColor,
                                isPng: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 164,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF0A2051),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: bColorOne,
                    width: 1,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 74,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/web_icons/waring.png",
                              height: 30,
                              width: 27,
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                "Warning",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              "assets/web_icons/cross.png",
                              height: 30,
                              width: 27,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Warning! This token has signs of a potential rug pull. Trade with caution.",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
