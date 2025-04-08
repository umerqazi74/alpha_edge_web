import 'package:alpha_edge_web/core/button_widget.dart';
import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/screens/home/home_widgets.dart';
import 'package:alpha_edge_web/screens/main/dashboard_tabs/chart/multi_line_chart.dart';
import 'package:alpha_edge_web/screens/main/dashboard_tabs/chart/shd_line_chart.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main_one_widgets.dart';
import '../main_widgets.dart';

class PastTokenTab extends StatefulWidget {
  const PastTokenTab({super.key});

  @override
  State<PastTokenTab> createState() => _PastTokenTabState();
}

class _PastTokenTabState extends State<PastTokenTab> {
  SingingCharacter? _character = SingingCharacter.value;
  String selectedOption = '';

  final List<String> optionItems = [
    "Quick Actions",
  ];

  @override
  void initState() {
    selectedOption = optionItems[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 1060,
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
              children: <Widget>[
                CircleIconWidget(
                  height: 120,
                  width: 120,
                  icon: "assets/web_icons/logo3.svg",
                  borderColor: whiteColor,
                  boxColor: Color(0xFF003270),
                ),
                SizedBox(height: 25),
                const Text(
                  "Alias",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                const Text(
                  "ex: 6qAb456…",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: whiteColor.withValues(alpha: .18),
                  margin: EdgeInsets.symmetric(vertical: 50),
                ),
                RowWidgets(
                  title: "Total Tokens Launched",
                  titleFont: 16,
                  titleWeight: FontWeight.w400,
                  titleColor: whiteColor,
                  subTitle: "54",
                  subTitleFont: 16,
                  subTitleWeight: FontWeight.w400,
                  subTitleColor: whiteColor,
                  bottomPadding: 14,
                ),
                RowWidgets(
                  title: "Avg. Success Rate",
                  titleFont: 16,
                  titleWeight: FontWeight.w400,
                  titleColor: whiteColor,
                  subTitle: "60%",
                  subTitleFont: 16,
                  subTitleWeight: FontWeight.w400,
                  subTitleColor: whiteColor,
                  bottomPadding: 14,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Preferred Launch Platform",
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
                          "Risk Score",
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
                              activeColor: Color(0xFF51D493),
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                            SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                "Low",
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
                RowWidgets(
                  title: "Color-Coded Badge",
                  titleFont: 16,
                  titleWeight: FontWeight.w400,
                  titleColor: whiteColor,
                  subTitle: "",
                  subTitleFont: 16,
                  subTitleWeight: FontWeight.w400,
                  subTitleColor: whiteColor,
                  bottomPadding: 14,
                ),
                SizedBox(height: 40),
                ButtonWidget(
                  text: "Set Alert",
                  height: 55,
                  borderRadius: 6,
                  fontWeight: FontWeight.w400,
                  btnColor: bColorOne,
                  borderColor: bColorOne,
                  onPressed: () {},
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 10, bottom: 24),
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
          Expanded(
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
                            text: "Past Token Launch",
                          ),
                          Tab(
                            text: "Token Launch Success Trends",
                          ),
                          Tab(
                            text: "Wallet Activity Feed",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Row(
                      mainAxisSize: MainAxisSize.min,
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
                  ],
                ),
                Container(
                  height: 555,
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
                      DetailTokenWidget(
                        name: "Token Name",
                        pool: "Liquidity Pool",
                        volume: "Trading Volume (24h)",
                        marketCap: "Market Cap",
                        isYes: true,
                        isHeader: true,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: List.generate(
                              8,
                              (int index) {
                                return DetailTokenWidget(
                                  name: "Doge",
                                  pool: "\$53.16B",
                                  volume: "\$13.16B",
                                  marketCap: "\$13.16B",
                                  isYes: index.isEven ? true : false,
                                  isHeader: false,
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
                        height: 414,
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
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
                              "Token Launch Success Trends",
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
                              child: ShdLineChart(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 414,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 30),
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
                              "Developer Success Trends",
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
                              child: MultiLineChart(),
                            )
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
      ),
    );
  }
}
