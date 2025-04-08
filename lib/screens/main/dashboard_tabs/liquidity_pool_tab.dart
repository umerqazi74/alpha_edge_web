import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/screens/main/dashboard_tabs/chart/bar_chart_two.dart';
import 'package:alpha_edge_web/screens/main/main_one_widgets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LiquidityPoolTab extends StatefulWidget {
  const LiquidityPoolTab({super.key});

  @override
  State<LiquidityPoolTab> createState() => _LiquidityPoolTabState();
}

class _LiquidityPoolTabState extends State<LiquidityPoolTab> {
  bool isEnabled = true;
  String selectedWallet = '';

  final List<String> walletItems = [
    "Newest First",
    "Highest Liquidity First",
    "DEX Platform",
    "Raydium",
    "Orca",
  ];

  @override
  void initState() {
    selectedWallet = walletItems[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          "New Liquidity Pool Scanner",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: whiteColor,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 60),
        Row(
          children: <Widget>[
            Expanded(
              child: const Text(
                "Live Liquidity Pool Tracking",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 170,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFF001B3E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: bColorOne,
                  width: 1,
                ),
              ),
              child: Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    iconStyleData: IconStyleData(
                      icon: SvgPicture.asset(
                        "assets/web_icons/down_side.svg",
                      ),
                    ),
                    selectedItemBuilder: (BuildContext context) {
                      return walletItems.map<Widget>((String item) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        );
                      }).toList();
                    },
                    items: walletItems
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: item == selectedWallet
                                ? Text(
                                    item,
                                    style: const TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                : Text(
                                    item,
                                    style: const TextStyle(
                                      color: Color(0xFFB1B2B2),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                          ),
                        )
                        .toList(),
                    value: selectedWallet,
                    onChanged: (value) {
                      setState(() {
                        selectedWallet = value as String;
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      height: 55,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      elevation: 1,
                      offset: const Offset(0, -10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xFF001B3E),
                        border: Border.all(
                          color: bColorOne,
                          width: 1,
                        ),
                      ),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: WidgetStateProperty.all(2),
                        thumbVisibility: WidgetStateProperty.all(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 220,
              decoration: BoxDecoration(
                color: Color(0xFF001B3E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: bColorOne,
                  width: 1,
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Live Mode Toggle",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 6),
                    Transform.scale(
                      scale: 0.8,
                      alignment: Alignment.centerRight,
                      child: Switch(
                        value: isEnabled,
                        inactiveTrackColor: bColorThree,
                        inactiveThumbColor: whiteColor,
                        activeTrackColor: bColorOne,
                        thumbIcon: WidgetStateProperty.resolveWith<Icon>(
                          (Set<WidgetState> states) {
                            if (states.containsAll(
                                [WidgetState.disabled, WidgetState.selected])) {
                              return const Icon(Icons.circle,
                                  color: whiteColor);
                            }

                            if (states.contains(WidgetState.disabled)) {
                              return const Icon(Icons.circle,
                                  color: whiteColor);
                            }

                            if (states.contains(WidgetState.selected)) {
                              return const Icon(Icons.circle,
                                  color: whiteColor);
                            }

                            return const Icon(Icons.circle, color: whiteColor);
                          },
                        ),
                        thumbColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return whiteColor;
                          }
                          return whiteColor;
                        }),
                        trackOutlineWidth:
                            WidgetStateProperty.resolveWith<double>(
                                (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return 0;
                          }
                          return 0;
                        }),
                        trackOutlineColor:
                            WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return bColorOne;
                          }
                          return bColorThree;
                        }),
                        activeColor: redColor,
                        onChanged: (bool value) {
                          setState(() {
                            isEnabled = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: 170,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Color(0xFF001B3E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: bColorOne,
                  width: 1,
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Risk Filtering",
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
            ),
            Container(
              height: 50,
              width: 170,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFF001B3E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: bColorOne,
                  width: 1,
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Custom Alerts",
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
            )
          ],
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
          margin: EdgeInsets.only(top: 20, bottom: 20),
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
              LiquidityPoolWidget(
                isHeader: true,
                name: "Token Name",
                amount: "Liquidity Added",
                dex: "DEX",
                providerWallet: "Provider Wallet",
                time: "Time Since LP Added",
                isRisk: true,
                isYes: true,
              ),
              Column(
                children: List.generate(
                  3,
                  (int index) {
                    return LiquidityPoolWidget(
                      isHeader: false,
                      name: "\$MOONDOGE",
                      amount: "\$200k",
                      dex: "Raydium",
                      providerWallet: "3xF...9Yz",
                      time: "4 seconds ago",
                      isRisk: index.isOdd ? true : false,
                      isYes: index.isEven ? true : false,
                    );
                  },
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      child: BarChartTwoWidget(),
                    ),
                  ],
                ),
              ),
            ),
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
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: bColorOne,
                      margin: EdgeInsets.only(top: 40),
                    ),
                    Column(
                      children: List.generate(6, (int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: const Text(
                                  "7qK...2Xv",
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
                                child: const Text(
                                  "\$1M ",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: const Text(
                                  "3 PM, 3/15/25",
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
                            ],
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      child: BarChartTwoWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
    );
  }
}
