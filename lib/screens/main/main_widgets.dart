import 'package:alpha_edge_web/core/button_widget.dart';
import 'package:alpha_edge_web/core/clickable_widget.dart';
import 'package:alpha_edge_web/screens/home/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/consts.dart';
import '../../core/responsive.dart';

//developer items widget...
class DeveloperItemsWidget extends StatefulWidget {
  final String name, address, token, amount;
  final bool isLow, isHigh, isModerate;
  final Function()? onTap;

  const DeveloperItemsWidget({
    super.key,
    required this.name,
    required this.address,
    required this.token,
    required this.amount,
    this.isLow = false,
    this.isHigh = false,
    this.isModerate = false,
    this.onTap,
  });

  @override
  State<DeveloperItemsWidget> createState() => _DeveloperItemsWidgetState();
}

enum SingingCharacter { value }

class _DeveloperItemsWidgetState extends State<DeveloperItemsWidget> {
  SingingCharacter? _character = SingingCharacter.value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      padding: EdgeInsets.symmetric(vertical: 36, horizontal: 26),
      margin: EdgeInsets.only(bottom: 14),
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
            RowWidgets(
              title: "Developer Name",
              titleFont: 16,
              titleWeight: FontWeight.w400,
              titleColor: whiteColor,
              subTitle: widget.name,
              subTitleFont: 16,
              subTitleWeight: FontWeight.w400,
              subTitleColor: whiteColor.withValues(alpha: .45),
              bottomPadding: 14,
              textAlign: TextAlign.start,
            ),
            RowWidgets(
              title: "Wallet Address",
              titleFont: 16,
              titleWeight: FontWeight.w400,
              titleColor: whiteColor,
              subTitle: widget.address,
              subTitleFont: 16,
              subTitleWeight: FontWeight.w400,
              subTitleColor: whiteColor,
              bottomPadding: 14,
              textAlign: TextAlign.start,
            ),
            RowWidgets(
              title: "Total Token Launches",
              titleFont: 16,
              titleWeight: FontWeight.w400,
              titleColor: whiteColor,
              subTitle: widget.token,
              subTitleFont: 16,
              subTitleWeight: FontWeight.w400,
              subTitleColor: whiteColor.withValues(alpha: .45),
              bottomPadding: 14,
              textAlign: TextAlign.start,
            ),
            RowWidgets(
              title: "Avg. Liquidity Per Token",
              titleFont: 16,
              titleWeight: FontWeight.w400,
              titleColor: whiteColor,
              subTitle: widget.amount,
              subTitleFont: 16,
              subTitleWeight: FontWeight.w400,
              subTitleColor: whiteColor.withValues(alpha: .45),
              bottomPadding: 14,
              textAlign: TextAlign.start,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Success Rate ",
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
                        Expanded(
                          child: Text(
                            widget.isHigh
                                ? "High"
                                : widget.isLow
                                    ? "Low"
                                    : "Moderate",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor.withValues(alpha: .45),
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
            ButtonWidget(
              text: "View Profile",
              height: 36,
              width: 110,
              borderRadius: 6,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              btnColor: bColorOne,
              borderColor: bColorOne,
              onPressed: widget.onTap,
            ),
          ],
        ),
      ),
    );
  }
}

//recent token widget...
class RecentTokenWidget extends StatelessWidget {
  final String time, name, price, vol, wallet, platform;
  final bool isHeader, isYes;
  final Function()? onTap;

  const RecentTokenWidget({
    super.key,
    this.onTap,
    required this.name,
    required this.price,
    this.isHeader = false,
    required this.isYes,
    required this.time,
    required this.vol,
    required this.wallet,
    required this.platform,
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
                time,
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
                price,
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
                vol,
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
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Text(
                      wallet,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight:
                            isHeader ? FontWeight.w700 : FontWeight.w400,
                      ),
                    ),
                  ),
                  if (isHeader == false) SizedBox(width: 10),
                  if (isHeader == false)
                    if (Responsive.isDesktop(context))
                      Image.asset(
                        height: 22,
                        width: 22,
                        "assets/web_icons/copy.png",
                      )
                ],
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                platform,
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
                            onPressed: onTap,
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
                            onPressed: onTap,
                          ),
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

//up coming items widget...
class UpComingItemsWidget extends StatelessWidget {
  final String icons, title, subTitle, day, hour, min;
  final Function()? onTap;

  const UpComingItemsWidget({
    super.key,
    required this.icons,
    required this.title,
    required this.subTitle,
    required this.day,
    required this.hour,
    required this.min,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWellWidget(
        onTap: onTap,
        child: Container(
          height: 290,
          width: 300,
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 18),
          decoration: BoxDecoration(
            color: bColorTwo,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleIconWidget(
                      height: 60,
                      width: 60,
                      boxColor: whiteColor,
                      borderColor: whiteColor,
                      icon: icons,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            subTitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: whiteColor.withValues(alpha: .53),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFF0A2051),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ColumnWidgets(
                          title: day,
                          titleFont: 20,
                          titleWeight: FontWeight.w600,
                          titleColor: whiteColor,
                          subTitle: "Days",
                          subTitleFont: 16,
                          subTitleWeight: FontWeight.w400,
                          subTitleColor: whiteColor,
                          height: 0,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 1,
                        color: whiteColor,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      Expanded(
                        child: ColumnWidgets(
                          title: hour,
                          titleFont: 20,
                          titleWeight: FontWeight.w600,
                          titleColor: whiteColor,
                          subTitle: "Hours",
                          subTitleFont: 16,
                          subTitleWeight: FontWeight.w400,
                          subTitleColor: whiteColor,
                          height: 0,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 1,
                        color: whiteColor,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      Expanded(
                        child: ColumnWidgets(
                          title: min,
                          titleFont: 20,
                          titleWeight: FontWeight.w600,
                          titleColor: whiteColor,
                          subTitle: "Mins",
                          subTitleFont: 16,
                          subTitleWeight: FontWeight.w400,
                          subTitleColor: whiteColor,
                          height: 0,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Launch in",
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
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Set Alert",
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
                      "assets/web_icons/telegram.png",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      "assets/web_icons/gmail.png",
                      height: 27,
                      width: 27,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//filter widget...
class FilterWidget extends StatefulWidget {
  final String lf, sr, lp, la, eut;
  final bool isHeader, isSwitch;

  const FilterWidget({
    super.key,
    required this.lf,
    required this.sr,
    required this.lp,
    required this.la,
    required this.eut,
    required this.isSwitch,
    required this.isHeader,
  });

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(
          top: widget.isHeader
              ? BorderSide(
                  color: whiteColor.withValues(alpha: .18),
                  width: 1,
                )
              : BorderSide.none,
          bottom: widget.isHeader
              ? BorderSide(
                  color: whiteColor.withValues(alpha: .18),
                  width: 1,
                )
              : BorderSide.none,
        ),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                widget.lf,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: widget.isHeader
                      ? whiteColor
                      : whiteColor.withValues(alpha: .60),
                  fontSize: 16,
                  fontWeight:
                      widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.sr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: widget.isHeader
                      ? whiteColor
                      : whiteColor.withValues(alpha: .60),
                  fontSize: 16,
                  fontWeight:
                      widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.lp,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: widget.isHeader
                      ? whiteColor
                      : whiteColor.withValues(alpha: .60),
                  fontSize: 16,
                  fontWeight:
                      widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.la,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: widget.isHeader
                      ? whiteColor
                      : whiteColor.withValues(alpha: .60),
                  fontSize: 16,
                  fontWeight:
                      widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: widget.isSwitch
                  ? Row(
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            widget.eut,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: widget.isHeader
                                  ? whiteColor
                                  : whiteColor.withValues(alpha: .60),
                              fontSize: 16,
                              fontWeight: widget.isHeader
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                            ),
                          ),
                        ),
                        Transform.scale(
                          scale: 0.7,
                          alignment: Alignment.centerRight,
                          child: Switch(
                            value: isEnabled,
                            inactiveTrackColor: bColorThree,
                            inactiveThumbColor: whiteColor,
                            activeTrackColor: bColorOne,
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
                    )
                  : Text(
                      widget.eut,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: widget.isHeader
                            ? whiteColor
                            : whiteColor.withValues(alpha: .60),
                        fontSize: 16,
                        fontWeight:
                            widget.isHeader ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

//search widget...
class SearchWidget extends StatefulWidget {
  final String name,
      wallet,
      token,
      volumePerToken,
      liquidityPerToken,
      time,
      rate;
  final bool isHeader, isYes;

  const SearchWidget({
    super.key,
    required this.isHeader,
    required this.name,
    required this.wallet,
    required this.token,
    required this.volumePerToken,
    required this.liquidityPerToken,
    required this.time,
    required this.rate,
    required this.isYes,
  });

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  bool isEnabled = false;

  @override
  void initState() {
    isEnabled = widget.isYes;
    // TODO: implement initState
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
                widget.wallet,
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
                widget.token,
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
                widget.volumePerToken,
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
                widget.liquidityPerToken,
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
                widget.volumePerToken,
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
                      "Bonded?\n(Yes/No)",
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
              child: Text(
                widget.rate,
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
                            icon: "assets/web_icons/qn.png",
                            isPng: true,
                          ),
                          SizedBox(width: 6),
                          SquareIconWidget(
                            icon: "assets/web_icons/ql.png",
                            isPng: true,
                          ),
                          SizedBox(width: 6),
                          SquareIconWidget(
                            icon: "assets/web_icons/qu.png",
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

//square icon widget...
class SquareIconWidget extends StatelessWidget {
  final double height, width, radius, imageSize;
  final String icon;
  final Function()? onTap;
  final bool isPng;
  final Color boxColor, borderColor;

  const SquareIconWidget({
    super.key,
    this.height = 37,
    this.width = 37,
    this.imageSize = 22,
    this.icon = "assets/web_icons/tick.svg",
    this.onTap,
    this.boxColor = const Color(0xFF234693),
    this.borderColor = whiteColor,
    this.radius = 6,
    this.isPng = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: isPng
              ? Image.asset(
                  icon,
                  height: imageSize,
                  width: imageSize,
                )
              : SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
