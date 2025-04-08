import 'package:alpha_edge_web/core/button_widget.dart';
import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/screens/home/home_widgets.dart';
import 'package:alpha_edge_web/screens/main/main_one_widgets.dart';
import 'package:flutter/material.dart';

class AlertTab extends StatefulWidget {
  const AlertTab({super.key});

  @override
  State<AlertTab> createState() => _AlertTabState();
}

class _AlertTabState extends State<AlertTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: const Text(
                "Alerts",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(width: 20),
            ButtonWidget(
              text: "Preferences",
              height: 55,
              width: 135,
              btnColor: bColorOne,
              borderColor: bColorOne,
              onPressed: () {},
            ),
          ],
        ),
        Container(
          height: 1,
          width: double.infinity,
          margin: EdgeInsets.only(top: 20, bottom: 60),
          color: bColorOne,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: ColumnWidgets(
                title: "Developer Alerts",
                titleColor: whiteColor,
                titleFont: 22,
                titleWeight: FontWeight.w700,
                subTitle:
                    "Get notified when a top developer launches a new token.",
                subTitleColor: Color(0xFFAFAFAF),

                subTitleFont: 20,
                subTitleWeight: FontWeight.w400,
                height: 20,
                subTitleMaxLine: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: ColumnWidgets(
                title: "Token Launch Alerts",
                titleColor: whiteColor,
                titleFont: 22,
                titleWeight: FontWeight.w700,
                subTitle:
                    "Set alerts for new tokens based on specific criteria.",
                subTitleColor: Color(0xFFAFAFAF),

                subTitleFont: 20,
                subTitleWeight: FontWeight.w400,
                height: 20,
                subTitleMaxLine: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: ColumnWidgets(
                title: "Market Trend Alerts",
                titleColor: whiteColor,
                titleFont: 22,
                titleWeight: FontWeight.w700,
                subTitle: "Stay ahead of market trends with real-time alerts.",
                subTitleColor: Color(0xFFAFAFAF),
                subTitleFont: 20,
                subTitleWeight: FontWeight.w400,
                height: 20,
                subTitleMaxLine: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 250,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 38, vertical: 40),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SwitchItemWidget(
                      title: "Alert via Telegram",
                      defaultValue: true,
                    ),
                    SizedBox(height: 16),
                    SwitchItemWidget(
                      title: "Alert via Telegram",
                      defaultValue: false,
                    ),
                    SizedBox(height: 16),
                    SwitchItemWidget(
                      title: "Alert via Telegram",
                      defaultValue: true,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 250,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 38, vertical: 40),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "New tokens with liquidity",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleIconWidget(
                          height: 33,
                          width: 33,
                          icon: "assets/web_icons/down_side.svg",
                          boxColor: bColorOne,
                          borderColor: bColorOne,
                          onTap: () {},
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Tokens launched on specific platforms",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleIconWidget(
                          height: 33,
                          width: 33,
                          icon: "assets/web_icons/down_side.svg",
                          boxColor: bColorOne,
                          borderColor: bColorOne,
                          onTap: () {},
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    SwitchItemWidget(
                      title: "Tokens with locked liquidity",
                      defaultValue: true,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 250,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 38, vertical: 40),
                decoration: BoxDecoration(
                  color: Color(0xFF0A2051),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: bColorOne,
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SwitchItemWidget(
                      title: "Meme coin market trend analysis",
                      defaultValue: false,
                    ),
                    SizedBox(height: 16),
                    SwitchItemWidget(
                      title: "Whale trading alerts",
                      defaultValue: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 120),
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
    );
  }
}
