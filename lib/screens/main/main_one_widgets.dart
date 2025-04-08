import 'package:alpha_edge_web/core/button_widget.dart';
import 'package:alpha_edge_web/screens/home/home_widgets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/consts.dart';
import '../../core/responsive.dart';
import 'main_widgets.dart';

//detail token widget...
class DetailTokenWidget extends StatelessWidget {
  final String name, pool, volume, marketCap;
  final bool isHeader, isYes;
  final Function()? onTap;

  const DetailTokenWidget({
    super.key,
    this.onTap,
    required this.name,
    this.isHeader = false,
    required this.isYes,
    required this.pool,
    required this.volume,
    required this.marketCap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: isHeader
            ? Colors.transparent
            : isYes == false
                ? bColorTwo
                : Color(0xFF10275A),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: isHeader ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                pool,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: isHeader ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                volume,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: isHeader ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: isHeader
                  ? Text(
                      "Is LP Locked?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: isHeader ? 18 : 16,
                        fontWeight:
                            isHeader ? FontWeight.w600 : FontWeight.w400,
                      ),
                    )
                  : isYes
                      ? Center(
                          child: ButtonWidget(
                            text: "Yes",
                            height: 37,
                            width: 70,
                            borderRadius: 6,
                            btnColor: greenColor,
                            borderColor: greenColor,
                            onPressed: () {},
                          ),
                        )
                      : Center(
                          child: ButtonWidget(
                            text: "No",
                            height: 37,
                            width: 70,
                            borderRadius: 6,
                            btnColor: redColor,
                            borderColor: redColor,
                            onPressed: () {},
                          ),
                        ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                marketCap,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: isHeader ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: isHeader
                  ? Text(
                      "Trading Trend",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight:
                            isHeader ? FontWeight.w700 : FontWeight.w400,
                      ),
                    )
                  : Image.asset(
                      isYes
                          ? "assets/web_icons/up.png"
                          : "assets/web_icons/down.png",
                      height: 24,
                      width: 20,
                    ),
            ),
            SizedBox(width: 20),
            isHeader
                ? Expanded(
                    child: Text(
                      "View Token",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight:
                            isHeader ? FontWeight.w700 : FontWeight.w400,
                      ),
                    ),
                  )
                : Expanded(
                    child: Center(
                      child: ButtonWidget(
                        text: "View Token",
                        height: 36,
                        width: 110,
                        borderRadius: 6,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        btnColor: bColorOne,
                        borderColor: bColorOne,
                        onPressed: onTap,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

//live items widget...
class LiveItemsWidget extends StatefulWidget {
  final String name, time, subTitle, poolSize, developerWallet, tokenAddress;
  final bool isLow, isHigh, isModerate, isYes;
  final Function()? onViewProfileTap, onSetAlertTap;

  const LiveItemsWidget({
    super.key,
    required this.name,
    required this.time,
    required this.subTitle,
    required this.poolSize,
    required this.developerWallet,
    required this.tokenAddress,
    required this.isLow,
    required this.isHigh,
    required this.isModerate,
    required this.isYes,
    this.onViewProfileTap,
    this.onSetAlertTap,
  });

  @override
  State<LiveItemsWidget> createState() => _LiveItemsWidgetState();
}

class _LiveItemsWidgetState extends State<LiveItemsWidget> {
  SingingCharacter? _character = SingingCharacter.value;
  bool isEnabled = false;

  String selectedOption = '';

  final List<String> optionItems = [
    "Quick Actions",
  ];

  @override
  void initState() {
    selectedOption = optionItems[0];
    isEnabled = widget.isYes;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 680,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 22),
      decoration: BoxDecoration(
        color: Color(0xFF0A2051),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: bColorOne,
          width: 1,
        ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleIconWidget(
                  height: 75,
                  width: 75,
                  boxColor: bColorOne,
                  borderColor: bColorOne,
                  icon: "assets/web_icons/logo5.svg",
                ),
                SizedBox(width: 18),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        widget.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        widget.time,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor.withValues(alpha: .65),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          widget.subTitle,
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
                      Image.asset(
                        "assets/web_icons/copy.png",
                        height: 22,
                        width: 22,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: whiteColor.withValues(alpha: .18),
              margin: EdgeInsets.only(top: 24, bottom: 14),
            ),
            RowWidgets(
              title: "Liquidity Pool Size",
              titleFont: 16,
              titleWeight: FontWeight.w400,
              titleColor: whiteColor,
              subTitle: widget.poolSize,
              subTitleFont: 16,
              subTitleWeight: FontWeight.w400,
              subTitleColor: whiteColor,
              bottomPadding: 14,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Platform",
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
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: bColorOne,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Image.asset("assets/web_icons/med.png"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: bColorOne,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/web_icons/raydium.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Developer Wallet",
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
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        widget.developerWallet,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/web_icons/copy.png",
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Trading Volume",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Radio<SingingCharacter>(
                          value: SingingCharacter.value,
                          groupValue: _character,
                          activeColor: widget.isHigh
                              ? Color(0xFF51D493)
                              : widget.isLow
                                  ? Color(0xFFD62727)
                                  : Color(0xFFD4C051),
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        SizedBox(width: 6),
                        Flexible(
                          child: Text(
                            widget.isHigh
                                ? "High"
                                : widget.isLow
                                    ? "Low"
                                    : "Moderate",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Is LP Locked?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Transform.scale(
                          scale: 0.8,
                          alignment: Alignment.centerRight,
                          child: Switch(
                            value: isEnabled,
                            inactiveTrackColor: Color(0xFFED1C24),
                            inactiveThumbColor: whiteColor,
                            activeTrackColor: Color(0xFF51D493),
                            thumbIcon: WidgetStateProperty.resolveWith<Icon>(
                              (Set<WidgetState> states) {
                                if (states.containsAll([
                                  WidgetState.disabled,
                                  WidgetState.selected
                                ])) {
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

                                return const Icon(Icons.circle,
                                    color: whiteColor);
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
                                return Color(0xFF51D493);
                              }
                              return Color(0xFFED1C24);
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
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Copy Token Address",
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
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        widget.tokenAddress,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/web_icons/copy.png",
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "View Dev Profile",
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
                    height: 33,
                    width: 33,
                    icon: "assets/web_icons/right_side.svg",
                    boxColor: bColorOne,
                    borderColor: bColorOne,
                    onTap: widget.onViewProfileTap,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Open in DEX",
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
                  Image.asset(
                    height: 25,
                    width: 25,
                    "assets/web_icons/fish.png",
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    height: 25,
                    width: 25,
                    "assets/web_icons/lines.png",
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    height: 25,
                    width: 25,
                    "assets/web_icons/raydium.png",
                  ),
                ],
              ),
            ),
            ButtonWidget(
              text: "Set Alert",
              height: 55,
              borderRadius: 6,
              fontWeight: FontWeight.w400,
              btnColor: bColorOne,
              borderColor: bColorOne,
              onPressed: widget.onSetAlertTap,
            ),
            Container(
              height: 55,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.transparent,
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
                      return optionItems.map<Widget>((String item) {
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
                    items: optionItems
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: item == selectedOption
                                ? Text(
                                    item,
                                    style: const TextStyle(
                                      color: Color(0xFF717D96),
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
                    value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value as String;
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
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.transparent,
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
          ],
        ),
      ),
    );
  }
}

//switch item widget...
class SwitchItemWidget extends StatefulWidget {
  final String title;
  final bool defaultValue;

  const SwitchItemWidget({
    super.key,
    required this.title,
    required this.defaultValue,
  });

  @override
  State<SwitchItemWidget> createState() => _SwitchItemWidgetState();
}

class _SwitchItemWidgetState extends State<SwitchItemWidget> {
  bool isEnabled = false;

  @override
  void initState() {
    isEnabled = widget.defaultValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 10),
        Transform.scale(
          scale: 0.8,
          alignment: Alignment.centerRight,
          child: Switch(
            value: isEnabled,
            inactiveTrackColor: whiteColor,
            inactiveThumbColor: whiteColor,
            activeTrackColor: bColorOne,
            thumbIcon: WidgetStateProperty.resolveWith<Icon>(
              (Set<WidgetState> states) {
                if (states.containsAll(
                    [WidgetState.disabled, WidgetState.selected])) {
                  return const Icon(Icons.circle, color: whiteColor);
                }

                if (states.contains(WidgetState.disabled)) {
                  return const Icon(Icons.circle, color: whiteColor);
                }

                if (states.contains(WidgetState.selected)) {
                  return const Icon(Icons.circle, color: whiteColor);
                }

                return const Icon(Icons.circle, color: whiteColor);
              },
            ),
            thumbColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return whiteColor;
              }
              return bColorOne;
            }),
            trackOutlineWidth: WidgetStateProperty.resolveWith<double>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return 0;
              }
              return 0;
            }),
            trackOutlineColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return bColorOne;
              }
              return whiteColor;
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
    );
  }
}

//liquidity pool widget...
class LiquidityPoolWidget extends StatefulWidget {
  final String name, amount, dex, providerWallet, time;
  final bool isHeader, isYes, isRisk;

  const LiquidityPoolWidget({
    super.key,
    required this.isHeader,
    required this.name,
    required this.isYes,
    required this.amount,
    required this.dex,
    required this.providerWallet,
    required this.time,
    required this.isRisk,
  });

  @override
  State<LiquidityPoolWidget> createState() => _LiquidityPoolWidgetState();
}

class _LiquidityPoolWidgetState extends State<LiquidityPoolWidget> {
  bool isEnabled = false;

  @override
  void initState() {
    isEnabled = widget.isYes;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: widget.isHeader
            ? Colors.transparent
            : widget.isYes
                ? Color(0xFF0A2051)
                : Color(0xFF193779),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: widget.isHeader
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Text(
                widget.name,
                maxLines: widget.isHeader ? 2 : 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: widget.isHeader ? 18 : 16,
                  fontWeight:
                      widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.amount,
                maxLines: widget.isHeader ? 2 : 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: widget.isHeader ? 18 : 16,
                  fontWeight:
                      widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.dex,
                maxLines: widget.isHeader ? 2 : 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: widget.isHeader ? 18 : 16,
                  fontWeight:
                      widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.providerWallet,
                maxLines: widget.isHeader ? 2 : 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: widget.isHeader ? 18 : 16,
                  fontWeight:
                      widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.time,
                maxLines: widget.isHeader ? 2 : 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: widget.isHeader ? 18 : 16,
                  fontWeight:
                      widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: widget.isHeader
                  ? Text(
                      "LP Locked?",
                      maxLines: widget.isHeader ? 2 : 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: widget.isHeader ? 18 : 16,
                        fontWeight:
                            widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                      ),
                    )
                  : Center(
                      child: Transform.scale(
                        scale: 0.8,
                        alignment: Alignment.centerRight,
                        child: Switch(
                          value: isEnabled,
                          inactiveTrackColor: Color(0xFFED1C24),
                          inactiveThumbColor: whiteColor,
                          activeTrackColor: Color(0xFF51D493),
                          thumbIcon: WidgetStateProperty.resolveWith<Icon>(
                            (Set<WidgetState> states) {
                              if (states.containsAll([
                                WidgetState.disabled,
                                WidgetState.selected
                              ])) {
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

                              return const Icon(Icons.circle,
                                  color: whiteColor);
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
                              return Color(0xFF51D493);
                            }
                            return Color(0xFFED1C24);
                          }),
                          activeColor: redColor,
                          onChanged: (bool value) {
                            setState(() {
                              isEnabled = value;
                            });
                          },
                        ),
                      ),
                    ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: widget.isHeader
                  ? Text(
                      "Honeypot Risk?",
                      maxLines: widget.isHeader ? 2 : 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: widget.isHeader ? 18 : 16,
                        fontWeight:
                            widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                      ),
                    )
                  : Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          CircleIconWidget(
                            height: 34,
                            width: 34,
                            icon: widget.isRisk
                                ? "assets/web_icons/tick1.svg"
                                : "assets/web_icons/cross.svg",
                            boxColor: widget.isRisk ? greenColor : redColor,
                            borderColor: widget.isRisk ? greenColor : redColor,
                          ),
                          SizedBox(width: 6),
                          Text(
                            widget.isRisk ? "Yes" : "No",
                            maxLines: widget.isHeader ? 2 : 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: widget.isHeader ? 18 : 16,
                              fontWeight: widget.isHeader
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
            if (Responsive.isDesktop(context)) SizedBox(width: 20),
            if (Responsive.isDesktop(context))
              Expanded(
                child: widget.isHeader
                    ? Text(
                        "Quick Actions",
                        maxLines: widget.isHeader ? 2 : 1,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: widget.isHeader ? 18 : 16,
                          fontWeight: widget.isHeader
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SquareIconWidget(
                            icon: "assets/web_icons/qp.png",
                            isPng: true,
                          ),
                          SizedBox(width: 6),
                          SquareIconWidget(
                            icon: "assets/web_icons/qb.png",
                            isPng: true,
                          ),
                          SizedBox(width: 6),
                          SquareIconWidget(
                            icon: "assets/web_icons/qc.png",
                            isPng: true,
                          ),
                          SizedBox(width: 6),
                          SquareIconWidget(
                            icon: "assets/web_icons/qs.png",
                            isPng: true,
                          ),
                        ],
                      ),
              ),
          ],
        ),
      ),
    );
  }
}
